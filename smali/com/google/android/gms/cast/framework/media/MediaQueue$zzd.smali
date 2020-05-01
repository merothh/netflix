.class final Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/MediaQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzd"
.end annotation


# instance fields
.field private final synthetic zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusUpdated()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zze(Lcom/google/android/gms/cast/framework/media/MediaQueue;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)J

    move-result-wide v0

    .line 84
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-wide v2, v2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzer:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 85
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iput-wide v0, v2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzer:J

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->clear()V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-wide v0, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->reload()V

    :cond_0
    return-void
.end method

.method public final zza([I)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcv;->zzg([I)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmt:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmr:Ljava/util/List;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zza([II)V
    .locals 3

    .line 13
    array-length v0, p1

    if-nez p2, :cond_0

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object p2, p2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmr:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p2, v2, :cond_1

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->reload()V

    return-void

    .line 21
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmr:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcv;->zzg([I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;II)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zzb([I)V
    .locals 6

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 29
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmt:Landroid/util/LruCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->reload()V

    return-void

    .line 34
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zzb([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 8

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 62
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v5

    .line 64
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmt:Landroid/util/LruCache;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->reload()V

    return-void

    .line 69
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zzc([I)V
    .locals 6

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 43
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmt:Landroid/util/LruCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->reload()V

    return-void

    .line 48
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v5, v5, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 53
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmr:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcv;->zzg([I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 56
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;->zznf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method
