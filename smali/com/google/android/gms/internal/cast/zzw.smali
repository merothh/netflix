.class public final Lcom/google/android/gms/internal/cast/zzw;
.super Lcom/google/android/gms/internal/cast/zzk;


# instance fields
.field private final zzcb:Lo/Object;

.field private final zzjt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/OutOfMemoryError;",
            "Ljava/util/Set<",
            "Lo/Object$Application;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzk;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzjt:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    return-void
.end method


# virtual methods
.method public final setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v0, p1}, Lo/Object;->c(Landroid/support/v4/media/session/MediaSessionCompat;)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;I)V
    .locals 3

    .line 18
    invoke-static {p1}, Lo/OutOfMemoryError;->e(Landroid/os/Bundle;)Lo/OutOfMemoryError;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzjt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Object$Application;

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v2, p1, v1, p2}, Lo/Object;->e(Lo/OutOfMemoryError;Lo/Object$Application;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza(Landroid/os/Bundle;Lcom/google/android/gms/internal/cast/zzl;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lo/OutOfMemoryError;->e(Landroid/os/Bundle;)Lo/OutOfMemoryError;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzjt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzjt:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzjt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzv;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/cast/zzv;-><init>(Lcom/google/android/gms/internal/cast/zzl;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzak()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v0}, Lo/Object;->d()Lo/Object$LoaderManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Object;->d(Lo/Object$LoaderManager;)V

    return-void
.end method

.method public final zzal()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v0}, Lo/Object;->c()Lo/Object$LoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v1}, Lo/Object;->d()Lo/Object$LoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zzam()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v0}, Lo/Object;->c()Lo/Object$LoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzan()V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzjt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Object$Application;

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v3, v2}, Lo/Object;->e(Lo/Object$Application;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzjt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;I)Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-static {p1}, Lo/OutOfMemoryError;->e(Landroid/os/Bundle;)Lo/OutOfMemoryError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/Object;->b(Lo/OutOfMemoryError;I)Z

    move-result p1

    return p1
.end method

.method public final zzd(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-static {p1}, Lo/OutOfMemoryError;->e(Landroid/os/Bundle;)Lo/OutOfMemoryError;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzjt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Object$Application;

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v1, v0}, Lo/Object;->e(Lo/Object$Application;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzk(Ljava/lang/String;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v0}, Lo/Object;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Object$LoaderManager;

    .line 30
    invoke-virtual {v1}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {p1, v1}, Lo/Object;->d(Lo/Object$LoaderManager;)V

    :cond_1
    return-void
.end method

.method public final zzl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzw;->zzcb:Lo/Object;

    invoke-virtual {v0}, Lo/Object;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Object$LoaderManager;

    .line 39
    invoke-virtual {v1}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v1}, Lo/Object$LoaderManager;->k()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzm()I
    .locals 1

    const v0, 0xbdfcc1

    return v0
.end method
