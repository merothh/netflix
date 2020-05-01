.class public Lo/ro;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rh;


# instance fields
.field private final a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lo/rp;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Lo/iU;

.field private final d:Landroid/content/Context;

.field private final e:Lo/pP;

.field private final h:Lo/ds;

.field private final j:Lo/pq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/pP;Lo/pq;Lo/iU;Lo/ds;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/ro;->a:Landroid/util/LongSparseArray;

    .line 43
    iput-object p1, p0, Lo/ro;->d:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lo/ro;->b:Landroid/os/Handler;

    .line 45
    iput-object p3, p0, Lo/ro;->e:Lo/pP;

    .line 46
    iput-object p5, p0, Lo/ro;->c:Lo/iU;

    .line 47
    iput-object p6, p0, Lo/ro;->h:Lo/ds;

    .line 48
    iput-object p4, p0, Lo/ro;->j:Lo/pq;

    return-void
.end method

.method private e(Ljava/lang/Long;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    .locals 3

    .line 67
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/ro;->h:Lo/ds;

    invoke-static {v0, v1, p1, v2}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Ljava/lang/Long;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object p1
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NfOfflineDrmManager"

    const-string v2, "unable to create offline DRM"

    .line 69
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmException;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lo/ro;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lo/ro;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/rt;

    .line 96
    invoke-virtual {v1}, Lo/rt;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Lo/re;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Long;Lo/rf;Lcom/netflix/mediaclient/service/player/StreamProfileType;Lo/rn$StateListAnimator;)Lo/rn;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/ro;->c(Ljava/lang/Long;Lo/rf;Lcom/netflix/mediaclient/service/player/StreamProfileType;Lo/rn$StateListAnimator;)Lo/rp;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Long;Lo/rf;Lcom/netflix/mediaclient/service/player/StreamProfileType;Lo/rn$StateListAnimator;)Lo/rp;
    .locals 10

    .line 53
    iget-object p3, p0, Lo/ro;->a:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/rp;

    if-eqz p3, :cond_0

    return-object p3

    .line 57
    :cond_0
    new-instance p3, Lo/rt;

    iget-object v1, p0, Lo/ro;->j:Lo/pq;

    iget-object v2, p0, Lo/ro;->d:Landroid/content/Context;

    iget-object v3, p0, Lo/ro;->b:Landroid/os/Handler;

    iget-object v4, p0, Lo/ro;->e:Lo/pP;

    iget-object v5, p0, Lo/ro;->c:Lo/iU;

    .line 58
    invoke-direct {p0, p1}, Lo/ro;->e(Ljava/lang/Long;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object v6

    move-object v0, p3

    move-object v7, p2

    move-object v8, p1

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lo/rt;-><init>(Lo/pq;Landroid/content/Context;Landroid/os/Handler;Lo/pP;Lo/iU;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;Lo/rf;Ljava/lang/Long;Lo/rn$StateListAnimator;)V

    .line 59
    iget-object p2, p0, Lo/ro;->a:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p3
.end method

.method public d()Landroid/os/Looper;
    .locals 1

    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Long;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lo/ro;->a:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    return-void
.end method

.method public e(JLcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
