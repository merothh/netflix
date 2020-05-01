.class Lo/xa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xa$ActionBar;,
        Lo/xa$StateListAnimator;,
        Lo/xa$Application;,
        Lo/xa$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/xa$StateListAnimator;

.field private final b:Lo/xa$TaskDescription;

.field private final c:J

.field private final d:Lo/wU$ActionBar;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lo/wA;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Lo/xa$ActionBar;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;


# direct methods
.method public constructor <init>(JLo/wU$ActionBar;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/xa;->e:Ljava/util/Map;

    .line 30
    new-instance v0, Lo/xa$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/xa$StateListAnimator;-><init>(Lo/xa$1;)V

    iput-object v0, p0, Lo/xa;->a:Lo/xa$StateListAnimator;

    .line 31
    new-instance v0, Lo/xa$TaskDescription;

    invoke-direct {v0}, Lo/xa$TaskDescription;-><init>()V

    iput-object v0, p0, Lo/xa;->b:Lo/xa$TaskDescription;

    .line 32
    new-instance v0, Lo/xa$ActionBar;

    invoke-direct {v0, v1}, Lo/xa$ActionBar;-><init>(Lo/xa$1;)V

    iput-object v0, p0, Lo/xa;->g:Lo/xa$ActionBar;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/xa;->h:Ljava/util/Map;

    .line 40
    iput-object p3, p0, Lo/xa;->d:Lo/wU$ActionBar;

    .line 41
    iput-wide p1, p0, Lo/xa;->c:J

    return-void
.end method

.method private d(Ljava/lang/String;J)V
    .locals 3

    .line 125
    iget-object v0, p0, Lo/xa;->h:Ljava/util/Map;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lo/xa;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 128
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 131
    iget-object p3, p0, Lo/xa;->h:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 77
    iget-object v0, p0, Lo/xa;->b:Lo/xa$TaskDescription;

    invoke-virtual {v0}, Lo/xa$TaskDescription;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lo/xa;->f:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 63
    iput p1, p0, Lo/xa;->i:I

    return-void
.end method

.method public b(Lorg/chromium/net/RequestFinishedInfo;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 6

    .line 136
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 137
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getResponseInfo()Lorg/chromium/net/UrlResponseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getResponseInfo()Lorg/chromium/net/UrlResponseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    const/16 v3, 0x190

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 138
    :goto_1
    iget-object v3, p0, Lo/xa;->b:Lo/xa$TaskDescription;

    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/xa$TaskDescription;->d(Lorg/chromium/net/RequestFinishedInfo$Metrics;)V

    .line 139
    iget-object v3, p0, Lo/xa;->g:Lo/xa$ActionBar;

    iget v4, p0, Lo/xa;->i:I

    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lo/xa$ActionBar;->a(Lo/xa$ActionBar;ILorg/chromium/net/RequestFinishedInfo$Metrics;)V

    .line 140
    iget-object v3, p0, Lo/xa;->a:Lo/xa$StateListAnimator;

    iget-object v4, p0, Lo/xa;->j:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lo/xa$StateListAnimator;->d(Lo/xa$StateListAnimator;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;Lorg/chromium/net/RequestFinishedInfo$Metrics;)V

    .line 141
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 142
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "network"

    invoke-direct {p0, v5, v3, v4}, Lo/xa;->d(Ljava/lang/String;J)V

    .line 145
    :cond_2
    iget-boolean v3, p0, Lo/xa;->f:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    return-void

    .line 150
    :cond_3
    iget-object v3, p0, Lo/xa;->e:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/wA;

    const-string v4, "nf_playreport"

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    .line 156
    new-instance v3, Lo/wA;

    iget-object v5, p2, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-direct {v3, v5}, Lo/wA;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 158
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "unable to find info for %s -- %s"

    invoke-static {v4, p1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 164
    :cond_5
    :goto_2
    iget-object v5, p0, Lo/xa;->e:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {v3}, Lo/wA;->e()[Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_6

    if-nez v0, :cond_6

    new-array p2, v2, [Ljava/lang/Object;

    .line 169
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "ignoring cached request %s"

    invoke-static {v4, p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 173
    :cond_6
    invoke-virtual {v3, p1}, Lo/wA;->d(Lorg/chromium/net/RequestFinishedInfo;)V

    .line 176
    iget-object v0, p0, Lo/xa;->d:Lo/wU$ActionBar;

    invoke-interface {v0, p1, p2, v3}, Lo/wU$ActionBar;->a(Lorg/chromium/net/RequestFinishedInfo;Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wA;)V

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/upstream/DataSpec;JJ)V
    .locals 1

    .line 189
    iget-boolean v0, p0, Lo/xa;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lo/xa;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/wA;

    if-nez v0, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "nf_playreport"

    const-string p3, "unable to find info for trace %s"

    .line 194
    invoke-static {p1, p3, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 197
    :cond_1
    invoke-virtual {v0, p4, p5, p2, p3}, Lo/wA;->a(JJ)V

    return-void
.end method

.method public c()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Application;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/xa;->g:Lo/xa$ActionBar;

    invoke-virtual {v0}, Lo/xa$ActionBar;->b()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Application;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 70
    iget-object v0, p0, Lo/xa;->b:Lo/xa$TaskDescription;

    invoke-virtual {v0}, Lo/xa$TaskDescription;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/DataSpec;J)V
    .locals 2

    .line 180
    iget-boolean v0, p0, Lo/xa;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance v0, Lo/wA;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lo/wA;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p2, p3}, Lo/wA;->c(J)V

    .line 185
    iget-object p2, p0, Lo/xa;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;J)V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lo/xa;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lo/xa;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/wA;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lo/wA;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lo/wA;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lo/xa;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    invoke-virtual {v0, p2}, Lo/wA;->d(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;)V

    const-wide/16 p1, 0x0

    .line 121
    invoke-virtual {v0, p3, p4, p1, p2}, Lo/wA;->a(JJ)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/xa;->j:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    return-void
.end method

.method public e()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$ActionBar;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/xa;->a:Lo/xa$StateListAnimator;

    invoke-virtual {v0}, Lo/xa$StateListAnimator;->c()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Long;
    .locals 3

    .line 105
    iget-object v0, p0, Lo/xa;->h:Ljava/util/Map;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lo/xa;->h:Ljava/util/Map;

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/xa;->h:Ljava/util/Map;

    monitor-enter v0

    .line 100
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lo/xa;->h:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
