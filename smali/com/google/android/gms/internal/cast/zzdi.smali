.class public final Lcom/google/android/gms/internal/cast/zzdi;
.super Lcom/google/android/gms/internal/cast/zzch;


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private zzya:J

.field private zzyb:Lcom/google/android/gms/cast/MediaStatus;

.field private zzyc:Ljava/lang/Long;

.field private zzyd:Lcom/google/android/gms/internal/cast/zzdk;

.field private final zzye:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyf:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyg:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyh:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyi:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyj:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyk:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyl:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzym:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyn:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyo:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyp:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyq:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyr:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzys:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyt:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyu:Lcom/google/android/gms/internal/cast/zzdo;

.field private final zzyv:Lcom/google/android/gms/internal/cast/zzdo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    .line 614
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcv;->zzp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdi;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzdi;->NAMESPACE:Ljava/lang/String;

    const-string v0, "MediaControlChannel"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    const-wide/32 v0, 0x5265c00

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzye:Lcom/google/android/gms/internal/cast/zzdo;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyf:Lcom/google/android/gms/internal/cast/zzdo;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyg:Lcom/google/android/gms/internal/cast/zzdo;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyh:Lcom/google/android/gms/internal/cast/zzdo;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    const-wide/16 v2, 0x2710

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyi:Lcom/google/android/gms/internal/cast/zzdo;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyj:Lcom/google/android/gms/internal/cast/zzdo;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyk:Lcom/google/android/gms/internal/cast/zzdo;

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyl:Lcom/google/android/gms/internal/cast/zzdo;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzym:Lcom/google/android/gms/internal/cast/zzdo;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyn:Lcom/google/android/gms/internal/cast/zzdo;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyo:Lcom/google/android/gms/internal/cast/zzdo;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyp:Lcom/google/android/gms/internal/cast/zzdo;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyq:Lcom/google/android/gms/internal/cast/zzdo;

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyr:Lcom/google/android/gms/internal/cast/zzdo;

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzys:Lcom/google/android/gms/internal/cast/zzdo;

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyu:Lcom/google/android/gms/internal/cast/zzdo;

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyt:Lcom/google/android/gms/internal/cast/zzdo;

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyv:Lcom/google/android/gms/internal/cast/zzdo;

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzye:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyf:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyg:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyh:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyi:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyj:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyk:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyl:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzym:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyn:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyo:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyp:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyq:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyr:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzys:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyu:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyu:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyv:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzdo;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->zzdp()V

    return-void
.end method

.method private final onMetadataUpdated()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdk;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private final onPreloadStatusUpdated()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    if-eqz v0, :cond_0

    .line 597
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdk;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onQueueStatusUpdated()V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    if-eqz v0, :cond_0

    .line 594
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdk;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onStatusUpdated()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    if-eqz v0, :cond_0

    .line 588
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdk;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final zza(DJJ)J
    .locals 5

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzya:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide p3

    :cond_1
    long-to-double v0, v0

    mul-double v0, v0, p1

    double-to-long p1, v0

    add-long/2addr p1, p3

    cmp-long p3, p5, v2

    if-lez p3, :cond_2

    cmp-long p3, p1, p5

    if-lez p3, :cond_2

    move-wide p1, p5

    goto :goto_0

    :cond_2
    cmp-long p3, p1, v2

    if-gez p3, :cond_3

    move-wide p1, v2

    :cond_3
    :goto_0
    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzdi;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    const/4 p1, 0x0

    .line 613
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyc:Ljava/lang/Long;

    return-object p1
.end method

.method private static zzb(Lorg/json/JSONArray;)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 579
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 580
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 581
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzdp()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 599
    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzya:J

    const/4 v0, 0x0

    .line 600
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    .line 601
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzch;->zzde()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzdo;

    const/16 v2, 0x7d2

    .line 602
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->zzq(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzj()J
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzj()J

    move-result-wide v0

    return-wide v0

    .line 585
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzdl;-><init>()V

    throw v0
.end method


# virtual methods
.method public final getApproximateStreamPosition()J
    .locals 9

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdi;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyc:Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 232
    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzya:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    return-wide v1

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v3

    .line 235
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v5

    .line 236
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const-wide/16 v7, 0x0

    cmpl-double v2, v3, v7

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v7

    move-object v2, p0

    .line 241
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/cast/zzdi;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_0
    return-wide v5
.end method

.method public final getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public final getStreamDuration()J
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdi;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdn;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v3, p3, v0

    if-ltz v3, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x35

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition cannot be negative: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 341
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcn;->zzdf()J

    move-result-wide v3

    .line 342
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyp:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v1, v3, v4, p1}, Lcom/google/android/gms/internal/cast/zzdo;->zza(JLcom/google/android/gms/internal/cast/zzdn;)V

    :try_start_0
    const-string p1, "requestId"

    .line 343
    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v1, "QUEUE_UPDATE"

    .line 344
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 345
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->zzj()J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    const-string p1, "currentItemId"

    .line 347
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p6, :cond_3

    const-string p1, "jump"

    .line 349
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz p5, :cond_5

    .line 350
    array-length p1, p5

    if-lez p1, :cond_5

    .line 351
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    .line 352
    :goto_1
    array-length p6, p5

    if-ge p2, p6, :cond_4

    .line 353
    aget-object p6, p5, p2

    invoke-virtual {p6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object p6

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "items"

    .line 355
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    :cond_5
    invoke-static {p7}, Lcom/google/android/gms/internal/cast/zzdq;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, "repeatMode"

    .line 358
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    if-eqz v2, :cond_7

    const-string p1, "currentTime"

    long-to-double p2, p3

    const-wide p4, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, p4

    .line 362
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz p8, :cond_8

    const-string p1, "customData"

    .line 364
    invoke-virtual {v0, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :catch_0
    :cond_8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdn;JILorg/json/JSONObject;)J
    .locals 5

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcn;->zzdf()J

    move-result-wide v1

    .line 113
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyc:Ljava/lang/Long;

    .line 114
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyi:Lcom/google/android/gms/internal/cast/zzdo;

    new-instance v4, Lcom/google/android/gms/internal/cast/zzdj;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/cast/zzdj;-><init>(Lcom/google/android/gms/internal/cast/zzdi;Lcom/google/android/gms/internal/cast/zzdn;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/cast/zzdo;->zza(JLcom/google/android/gms/internal/cast/zzdn;)V

    :try_start_0
    const-string p1, "requestId"

    .line 115
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SEEK"

    .line 116
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 117
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    long-to-double p2, p2

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v3

    .line 120
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    const-string p2, "resumeState"

    if-ne p4, p1, :cond_0

    :try_start_1
    const-string p1, "PLAYBACK_START"

    .line 122
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    const-string p1, "PLAYBACK_PAUSE"

    .line 124
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    const-string p1, "customData"

    .line 126
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdn;Lorg/json/JSONObject;)J
    .locals 5

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcn;->zzdf()J

    move-result-wide v1

    .line 77
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyf:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdo;->zza(JLcom/google/android/gms/internal/cast/zzdn;)V

    :try_start_0
    const-string p1, "requestId"

    .line 78
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PAUSE"

    .line 79
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    .line 82
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdn;[I)J
    .locals 6

    .line 436
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 437
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcn;->zzdf()J

    move-result-wide v1

    .line 438
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyt:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdo;->zza(JLcom/google/android/gms/internal/cast/zzdn;)V

    :try_start_0
    const-string p1, "requestId"

    .line 439
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEMS"

    .line 440
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 441
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 442
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 443
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p2, v4

    .line 444
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 446
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(JI)V
    .locals 3

    .line 608
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzch;->zzde()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzdo;

    const/4 v2, 0x0

    .line 610
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/cast/zzdo;->zzc(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdk;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdn;)J
    .locals 5

    .line 189
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcn;->zzdf()J

    move-result-wide v1

    .line 191
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyl:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdo;->zza(JLcom/google/android/gms/internal/cast/zzdn;)V

    :try_start_0
    const-string p1, "requestId"

    .line 192
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "GET_STATUS"

    .line 193
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz p1, :cond_0

    const-string p1, "mediaSessionId"

    .line 195
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzdn;)J
    .locals 5

    .line 409
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 410
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcn;->zzdf()J

    move-result-wide v1

    .line 411
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzys:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdo;->zza(JLcom/google/android/gms/internal/cast/zzdn;)V

    :try_start_0
    const-string p1, "requestId"

    .line 412
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEM_IDS"

    .line 413
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 414
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzdn;Lorg/json/JSONObject;)J
    .locals 5

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcn;->zzdf()J

    move-result-wide v1

    .line 101
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyg:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdo;->zza(JLcom/google/android/gms/internal/cast/zzdn;)V

    :try_start_0
    const-string p1, "requestId"

    .line 102
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PLAY"

    .line 103
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    .line 106
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzdd()V
    .locals 0

    .line 605
    invoke-super {p0}, Lcom/google/android/gms/internal/cast/zzch;->zzdd()V

    .line 606
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->zzdp()V

    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 14

    .line 468
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzwg:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "message received: %s"

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/cast/zzdh;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 469
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    .line 470
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "requestId"

    const-wide/16 v6, -0x1

    .line 471
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 472
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x4

    const/4 v10, 0x3

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "QUEUE_ITEM_IDS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v7, "MEDIA_STATUS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_2
    const-string v7, "INVALID_PLAYER_STATE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "QUEUE_CHANGE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_4
    const-string v7, "LOAD_FAILED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string v7, "INVALID_REQUEST"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_6
    const-string v7, "QUEUE_ITEMS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_7
    const-string v7, "LOAD_CANCELLED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const-string v7, "itemIds"

    const/16 v11, 0x834

    const-string v12, "customData"

    const/4 v13, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_c

    .line 563
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyt:Lcom/google/android/gms/internal/cast/zzdo;

    .line 564
    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/google/android/gms/internal/cast/zzdo;->zzc(JILjava/lang/Object;)Z

    .line 566
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    if-eqz v4, :cond_19

    const-string v4, "items"

    .line 567
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 568
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v5, 0x0

    .line 569
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 570
    new-instance v6, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/cast/zzdk;->zzb([Lcom/google/android/gms/cast/MediaQueueItem;)V

    goto/16 :goto_c

    .line 546
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyu:Lcom/google/android/gms/internal/cast/zzdo;

    .line 547
    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/google/android/gms/internal/cast/zzdo;->zzc(JILjava/lang/Object;)Z

    .line 549
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    if-eqz v4, :cond_7

    const-string v4, "changeType"

    .line 550
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzdi;->zzb(Lorg/json/JSONArray;)[I

    move-result-object v5

    const-string v6, "insertBefore"

    .line 552
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v5, :cond_7

    .line 554
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_3

    :sswitch_8
    const-string v6, "NO_CHANGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x4

    goto :goto_3

    :sswitch_9
    const-string v6, "ITEMS_CHANGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :sswitch_a
    const-string v6, "UPDATE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x3

    goto :goto_3

    :sswitch_b
    const-string v6, "REMOVE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x2

    goto :goto_3

    :sswitch_c
    const-string v6, "INSERT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x0

    :cond_2
    :goto_3
    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    if-eq v8, v0, :cond_4

    if-eq v8, v10, :cond_3

    goto :goto_4

    .line 561
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/cast/zzdk;->zza([I)V

    goto :goto_4

    .line 559
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/cast/zzdk;->zzc([I)V

    return-void

    .line 557
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/cast/zzdk;->zzb([I)V

    return-void

    .line 555
    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    invoke-interface {v4, v5, v2}, Lcom/google/android/gms/internal/cast/zzdk;->zza([II)V

    :cond_7
    :goto_4
    return-void

    .line 538
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzys:Lcom/google/android/gms/internal/cast/zzdo;

    .line 539
    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/google/android/gms/internal/cast/zzdo;->zzc(JILjava/lang/Object;)Z

    .line 541
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    if-eqz v4, :cond_8

    .line 542
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzdi;->zzb(Lorg/json/JSONArray;)[I

    move-result-object v2

    if-eqz v2, :cond_8

    .line 544
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/cast/zzdk;->zza([I)V

    :cond_8
    return-void

    .line 532
    :pswitch_3
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzwg:Lcom/google/android/gms/internal/cast/zzdh;

    const-string v7, "received unexpected error: Invalid Request."

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/cast/zzdh;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 534
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzch;->zzde()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/cast/zzdo;

    .line 535
    invoke-virtual {v7, v5, v6, v11, v2}, Lcom/google/android/gms/internal/cast/zzdo;->zzc(JILjava/lang/Object;)Z

    goto :goto_5

    :cond_9
    return-void

    .line 529
    :pswitch_4
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 530
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzye:Lcom/google/android/gms/internal/cast/zzdo;

    const/16 v7, 0x835

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/internal/cast/zzdo;->zzc(JILjava/lang/Object;)Z

    return-void

    .line 526
    :pswitch_5
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 527
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzye:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v4, v5, v6, v11, v2}, Lcom/google/android/gms/internal/cast/zzdo;->zzc(JILjava/lang/Object;)Z

    return-void

    .line 520
    :pswitch_6
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzwg:Lcom/google/android/gms/internal/cast/zzdh;

    const-string v7, "received unexpected error: Invalid Player State."

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/cast/zzdh;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzch;->zzde()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/cast/zzdo;

    .line 523
    invoke-virtual {v7, v5, v6, v11, v2}, Lcom/google/android/gms/internal/cast/zzdo;->zzc(JILjava/lang/Object;)Z

    goto :goto_6

    :cond_a
    return-void

    :pswitch_7
    const-string v4, "status"

    .line 473
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 474
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_17

    .line 475
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 476
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzye:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/cast/zzdo;->test(J)Z

    move-result v4

    .line 477
    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyj:Lcom/google/android/gms/internal/cast/zzdo;

    .line 478
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzdo;->zzdq()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyj:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/cast/zzdo;->test(J)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyk:Lcom/google/android/gms/internal/cast/zzdo;

    .line 479
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzdo;->zzdq()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyk:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/cast/zzdo;->test(J)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_c
    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    if-nez v4, :cond_f

    .line 483
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v4, :cond_e

    goto :goto_8

    .line 487
    :cond_e
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v4, v2, v7}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result v2

    goto :goto_9

    .line 484
    :cond_f
    :goto_8
    new-instance v4, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v4, v2}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzya:J

    const/16 v2, 0x7f

    :goto_9
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_10

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzya:J

    .line 490
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onStatusUpdated()V

    :cond_10
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_11

    .line 492
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzya:J

    .line 493
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onStatusUpdated()V

    :cond_11
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_12

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzya:J

    :cond_12
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_13

    .line 497
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onMetadataUpdated()V

    :cond_13
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_14

    .line 499
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onQueueStatusUpdated()V

    :cond_14
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_15

    .line 501
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onPreloadStatusUpdated()V

    :cond_15
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_16

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzya:J

    .line 505
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    if-eqz v4, :cond_16

    .line 506
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyd:Lcom/google/android/gms/internal/cast/zzdk;

    invoke-interface {v4}, Lcom/google/android/gms/internal/cast/zzdk;->onAdBreakStatusUpdated()V

    :cond_16
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_18

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzya:J

    .line 509
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onStatusUpdated()V

    goto :goto_a

    .line 511
    :cond_17
    iput-object v13, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyb:Lcom/google/android/gms/cast/MediaStatus;

    .line 512
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onStatusUpdated()V

    .line 513
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onMetadataUpdated()V

    .line 514
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onQueueStatusUpdated()V

    .line 515
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdi;->onPreloadStatusUpdated()V

    .line 516
    :cond_18
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzch;->zzde()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/cast/zzdo;

    .line 517
    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/google/android/gms/internal/cast/zzdo;->zzc(JILjava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :cond_19
    :goto_c
    return-void

    :catch_0
    move-exception v2

    .line 575
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzwg:Lcom/google/android/gms/internal/cast/zzdh;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    const-string p1, "Message is malformed (%s); ignoring: %s"

    invoke-virtual {v4, p1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_7
        -0x6ab4c52e -> :sswitch_6
        -0x430e23f9 -> :sswitch_5
        -0xfa7664a -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_c
        -0x7022137c -> :sswitch_b
        -0x6a6cd337 -> :sswitch_a
        0x42ef412f -> :sswitch_9
        0x5330afee -> :sswitch_8
    .end sparse-switch
.end method
