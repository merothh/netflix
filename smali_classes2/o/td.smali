.class public Lo/td;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/uE;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Lo/ta;

.field private final d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

.field private final e:Ljava/lang/String;

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/ta;Landroid/os/Handler;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChunkTracker"

    .line 24
    iput-object v0, p0, Lo/td;->e:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/td;->a:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lo/td;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    .line 33
    iput p1, p0, Lo/td;->b:I

    .line 34
    iput-object p3, p0, Lo/td;->c:Lo/ta;

    .line 35
    iput-object p4, p0, Lo/td;->i:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/Format;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lo/td;->c:Lo/ta;

    new-instance v1, Lo/tl;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lo/tl;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/ta;->e(Lo/TimePickerSpinnerDelegate;)V

    return-void
.end method

.method private b()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .locals 5

    const/4 v0, 0x0

    .line 95
    :try_start_0
    iget-object v1, p0, Lo/td;->a:Ljava/util/List;

    .line 96
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/uE;

    :goto_0
    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v2}, Lo/uE;->d()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-nez v2, :cond_3

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/uE;

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Lo/uE;->d()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v2, v0

    :cond_3
    return-object v2

    :catch_0
    return-object v0
.end method

.method static synthetic b(Lo/td;JLcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/td;->e(JLcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private synthetic e(JLcom/google/android/exoplayer2/Format;)V
    .locals 5

    .line 127
    iget-object v0, p0, Lo/td;->c:Lo/ta;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide p1

    new-instance v1, Lo/ta$TaskDescription;

    iget-object v2, p3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget v3, p3, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v3, v3

    invoke-direct {v1, v2, v3, v4}, Lo/ta$TaskDescription;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, p1, p2, v1}, Lo/ta;->d(JLo/ta$TaskDescription;)V

    .line 128
    iget-object p1, p0, Lo/td;->c:Lo/ta;

    new-instance p2, Lo/tl;

    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->c:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    iget-object p3, p3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-direct {p2, v0, p3}, Lo/tl;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lo/ta;->e(Lo/TimePickerSpinnerDelegate;)V

    return-void
.end method

.method static synthetic e(Lo/td;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/td;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 111
    iget-object v0, p0, Lo/td;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lo/td;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/td;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public a(J)J
    .locals 7

    .line 68
    iget-object v0, p0, Lo/td;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 71
    :cond_0
    iget-object v0, p0, Lo/td;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/uE;

    if-eqz v3, :cond_1

    move-wide v5, p1

    goto :goto_1

    :cond_1
    const-wide/high16 v5, -0x8000000000000000L

    .line 72
    :goto_1
    invoke-virtual {v4, v5, v6}, Lo/uE;->a(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public b(Lo/uE;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lo/td;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ChunkTracker"

    const-string v1, "SampleStream %s removed."

    .line 46
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v1, p0, Lo/td;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/uE;

    .line 53
    invoke-virtual {v2}, Lo/uE;->c()[Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 54
    new-instance v6, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    iget v7, p0, Lo/td;->b:I

    invoke-direct {v6, v7, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;-><init>(ILcom/google/android/exoplayer2/source/chunk/Chunk;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c(Lcom/google/android/exoplayer2/Format;J)V
    .locals 2

    .line 125
    iget v0, p0, Lo/td;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lo/td;->i:Landroid/os/Handler;

    new-instance v1, Lo/tc;

    invoke-direct {v1, p0, p2, p3, p1}, Lo/tc;-><init>(Lo/td;JLcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne v0, p2, :cond_1

    .line 132
    iget-object p2, p0, Lo/td;->i:Landroid/os/Handler;

    new-instance p3, Lo/te;

    invoke-direct {p3, p0, p1}, Lo/te;-><init>(Lo/td;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e(J)J
    .locals 7

    .line 81
    iget-object v0, p0, Lo/td;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/uE;

    if-eqz v3, :cond_0

    move-wide v5, p1

    goto :goto_1

    :cond_0
    const-wide/high16 v5, -0x8000000000000000L

    .line 82
    :goto_1
    invoke-virtual {v4, v5, v6}, Lo/uE;->d(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public e()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;
    .locals 3

    .line 61
    invoke-direct {p0}, Lo/td;->b()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    iget v2, p0, Lo/td;->b:I

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;-><init>(ILcom/google/android/exoplayer2/source/chunk/Chunk;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public e(Lo/uE;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lo/td;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ChunkTracker"

    const-string v1, "SampleStream %s added."

    .line 40
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method
