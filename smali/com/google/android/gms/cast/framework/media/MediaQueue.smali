.class public Lcom/google/android/gms/cast/framework/media/MediaQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/MediaQueue$zzc;,
        Lcom/google/android/gms/cast/framework/media/MediaQueue$zza;,
        Lcom/google/android/gms/cast/framework/media/MediaQueue$zzb;,
        Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;,
        Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field zzer:J

.field private final zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzmp:Lcom/google/android/gms/internal/cast/zzdh;

.field private zzmq:Z

.field zzmr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final zzms:Landroid/util/SparseIntArray;

.field zzmt:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field final zzmu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final zzmv:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmw:I

.field private zzmx:Ljava/util/TimerTask;

.field zzmy:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation
.end field

.field zzmz:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzna:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation
.end field

.field private zznb:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation
.end field

.field private zznc:Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;

.field private zznd:Lcom/google/android/gms/cast/framework/SessionManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
            "Lcom/google/android/gms/cast/framework/CastSession;",
            ">;"
        }
    .end annotation
.end field

.field private zzne:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;II)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;II)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzne:Ljava/util/Set;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/cast/zzdh;

    const-string p3, "MediaQueue"

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmp:Lcom/google/android/gms/internal/cast/zzdh;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/16 p1, 0x14

    const/4 p2, 0x1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmw:I

    .line 8
    invoke-static {}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p2

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmr:Ljava/util/List;

    .line 10
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmu:Ljava/util/List;

    .line 12
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmv:Ljava/util/Deque;

    .line 13
    new-instance p3, Lcom/google/android/gms/internal/cast/zzek;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/cast/zzek;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->handler:Landroid/os/Handler;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzh(I)V

    .line 16
    new-instance p1, Lcom/google/android/gms/cast/framework/media/zzk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/zzk;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmx:Ljava/util/TimerTask;

    .line 17
    new-instance p1, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzb;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzb;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;Lcom/google/android/gms/cast/framework/media/zzk;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzna:Lcom/google/android/gms/common/api/ResultCallback;

    .line 18
    new-instance p1, Lcom/google/android/gms/cast/framework/media/MediaQueue$zza;

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/cast/framework/media/MediaQueue$zza;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;Lcom/google/android/gms/cast/framework/media/zzk;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zznb:Lcom/google/android/gms/common/api/ResultCallback;

    .line 19
    new-instance p1, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zznc:Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;

    .line 20
    new-instance p1, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzc;

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/cast/framework/media/MediaQueue$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;Lcom/google/android/gms/cast/framework/media/zzk;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zznd:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    .line 21
    invoke-static {}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zznd:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    const-class v0, Lcom/google/android/gms/cast/framework/CastSession;

    .line 23
    invoke-virtual {p1, p3, v0}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)J
    .locals 0

    .line 187
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbi()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;II)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb(II)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd([I)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)J
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->zzk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->zzj()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final zzb(II)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzne:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 168
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->itemsInsertedInRange(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbh()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zze([I)V

    return-void
.end method

.method private final zzbc()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmx:Ljava/util/TimerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzbd()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmz:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmz:Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method private final zzbe()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmy:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmy:Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method private final zzbh()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 152
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzbi()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzne:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->mediaQueueWillChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzbj()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzne:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->mediaQueueChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzbk()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzne:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->itemsReloaded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbk()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbj()V

    return-void
.end method

.method private final zzd([I)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzne:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 172
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->itemsUpdatedAtIndexes([I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/framework/media/MediaQueue;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p0
.end method

.method private final zze([I)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzne:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 176
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->itemsRemovedAtIndexes([I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/framework/media/MediaQueue;)Lcom/google/android/gms/internal/cast/zzdh;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmp:Lcom/google/android/gms/internal/cast/zzdh;

    return-object p0
.end method

.method private final zzh(I)V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzl;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;I)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmt:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbi()V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzms:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmt:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbc()V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmv:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 94
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbd()V

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbe()V

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbk()V

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbj()V

    return-void
.end method

.method public final reload()V
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 99
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmq:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmz:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_1

    return-void

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbd()V

    .line 105
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbe()V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcc()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmz:Lcom/google/android/gms/common/api/PendingResult;

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmz:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zznb:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method final zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmq:Z

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zznc:Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->registerCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 126
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)J

    move-result-wide v0

    .line 127
    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzer:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->reload()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzbb()V
    .locals 4

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbc()V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmx:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final zzbf()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zznc:Lcom/google/android/gms/cast/framework/media/MediaQueue$zzd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->unregisterCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmq:Z

    return-void
.end method

.method final zzbg()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmv:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmy:Lcom/google/android/gms/common/api/PendingResult;

    if-nez v0, :cond_2

    .line 142
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmq:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmv:Ljava/util/Deque;

    .line 145
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf([I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmy:Lcom/google/android/gms/common/api/PendingResult;

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmy:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzna:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzmv:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    nop

    :cond_2
    :goto_0
    return-void
.end method
