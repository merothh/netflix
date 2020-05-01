.class public Lo/qP;
.super Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;
.source ""


# static fields
.field private static i:I


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJLcom/google/android/exoplayer2/drm/DrmSessionManager;Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZJ",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    .line 34
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;-><init>(Landroid/content/Context;ZJLcom/google/android/exoplayer2/drm/DrmSessionManager;Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/qP;->d:Ljava/util/List;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    iput-wide p1, p0, Lo/qP;->b:J

    .line 27
    iput-wide p1, p0, Lo/qP;->a:J

    .line 28
    iput-wide p1, p0, Lo/qP;->e:J

    .line 35
    iput-object p5, p0, Lo/qP;->c:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-void
.end method

.method private a()V
    .locals 8

    .line 93
    iget-wide v0, p0, Lo/qP;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lo/qP;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lo/qP;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    check-cast v0, Lo/qL;

    .line 99
    iget-object v1, v0, Lo/qL;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-wide v4, p0, Lo/qP;->e:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Lo/qL;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, p0, Lo/qP;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, v0, Lo/qL;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-wide v4, p0, Lo/qP;->a:J

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    iput-wide v2, p0, Lo/qP;->a:J

    .line 104
    iput-wide v2, p0, Lo/qP;->e:J

    .line 105
    iget-object v0, p0, Lo/qP;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 110
    sget v0, Lo/qP;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/qP;->i:I

    .line 111
    sget v0, Lo/qP;->i:I

    const/16 v1, 0x96

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 112
    sput v0, Lo/qP;->i:I

    .line 114
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "input keyevent KEYCODE_WAKEUP"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runtime exec error: "

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;
    .locals 8

    .line 40
    new-instance v7, Lo/qK;

    iget-object v1, p0, Lo/qP;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lo/qP;->c:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    const/16 v3, 0x8

    const/16 v4, 0x10

    const/high16 v5, 0xc0000

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lo/qK;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IIILcom/google/android/exoplayer2/drm/ExoMediaCrypto;)V

    .line 41
    iget-object p1, p0, Lo/qP;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    instance-of p1, p1, Lo/qL;

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lo/qP;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    check-cast p1, Lo/qL;

    invoke-virtual {v7, p1}, Lo/qK;->d(Lo/qL;)V

    .line 44
    :cond_0
    iget-object p1, p0, Lo/qP;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lo/qP;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v7, p1}, Lo/qK;->b(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    return-object v7
.end method

.method public logOutputFrame(JJ)V
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 74
    invoke-direct {p0}, Lo/qP;->a()V

    .line 76
    :cond_0
    iget-wide v2, p0, Lo/qP;->b:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    .line 77
    iput-wide p1, p0, Lo/qP;->b:J

    sub-long p1, p3, p1

    const-wide/16 v2, 0x7530

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 81
    iget-object v2, p0, Lo/qP;->d:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-wide v2, p0, Lo/qP;->a:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lo/qP;->a:J

    .line 83
    iget-wide p1, p0, Lo/qP;->e:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const-wide/32 p1, 0x3938700

    sub-long/2addr p3, p1

    .line 84
    iput-wide p3, p0, Lo/qP;->e:J

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0}, Lo/qP;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEnabled(Z)V
    .locals 1

    .line 60
    new-instance p1, Lo/qL;

    invoke-direct {p1}, Lo/qL;-><init>()V

    iput-object p1, p0, Lo/qP;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 61
    iget-object p1, p0, Lo/qP;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lo/qP;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->onPositionReset(JZ)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    iput-wide p1, p0, Lo/qP;->b:J

    .line 68
    invoke-direct {p0}, Lo/qP;->a()V

    return-void
.end method

.method public render(JJ)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->render(JJ)V

    .line 53
    invoke-static {}, Lo/dX;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-direct {p0}, Lo/qP;->c()V

    :cond_0
    return-void
.end method
