.class public Lo/ws;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tH$TaskDescription;
.implements Lo/xd$Activity;
.implements Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$Application;
.implements Lo/wU$ActionBar;


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final e:J


# instance fields
.field private A:Lo/tG;

.field private B:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

.field private C:Z

.field private final D:Lo/wB;

.field private E:Lo/wP;

.field private F:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

.field private G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

.field private H:Lo/wY;

.field private I:Lo/wY;

.field private J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lo/wj;

.field private L:Lo/wi;

.field private M:Lo/wV;

.field private N:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

.field private final O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;",
            ">;"
        }
    .end annotation
.end field

.field private P:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/tH$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lo/wY;

.field private R:Lcom/google/android/exoplayer2/Format;

.field private S:Lo/ta$TaskDescription;

.field private T:Z

.field private U:Lo/xD;

.field private V:Ljava/lang/String;

.field private W:J

.field private X:Lo/wY;

.field private Y:I

.field private Z:Z

.field private aa:Lo/tP;

.field private ab:Z

.field private ac:Z

.field private ad:Lo/wX;

.field private final ag:Ljava/lang/Runnable;

.field private final ah:Ljava/lang/Runnable;

.field private final d:Landroid/content/Context;

.field private final f:Lo/wx;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

.field private final j:Ljava/lang/String;

.field private k:Lo/xd;

.field private final l:Lo/wG;

.field private m:Ljava/lang/String;

.field private final n:Landroid/os/Handler;

.field private volatile o:Ljava/lang/String;

.field private final p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

.field private final q:J

.field private final r:Lo/pm;

.field private final s:Lo/xa;

.field private final t:Lo/pD;

.field private u:Lo/tN;

.field private v:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

.field private w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

.field private x:Lo/ty;

.field private y:Lcom/google/android/exoplayer2/ExoPlayer;

.field private z:Lo/sE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lo/ws;->e:J

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lo/ws;->b:J

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lo/ws;->c:J

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/ws;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/wx;Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lo/wG;Ljava/lang/String;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lo/wY;

    invoke-direct {v0}, Lo/wY;-><init>()V

    iput-object v0, p0, Lo/ws;->I:Lo/wY;

    .line 134
    new-instance v0, Lo/wY;

    invoke-direct {v0}, Lo/wY;-><init>()V

    iput-object v0, p0, Lo/ws;->H:Lo/wY;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ws;->J:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ws;->O:Ljava/util/Map;

    .line 164
    new-instance v0, Lo/wY;

    invoke-direct {v0}, Lo/wY;-><init>()V

    iput-object v0, p0, Lo/ws;->X:Lo/wY;

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lo/ws;->Z:Z

    .line 176
    iput-boolean v0, p0, Lo/ws;->ac:Z

    .line 177
    iput-boolean v0, p0, Lo/ws;->ab:Z

    .line 1285
    new-instance v0, Lo/ws$4;

    invoke-direct {v0, p0}, Lo/ws$4;-><init>(Lo/ws;)V

    iput-object v0, p0, Lo/ws;->ag:Ljava/lang/Runnable;

    .line 1304
    new-instance v0, Lo/ws$2;

    invoke-direct {v0, p0}, Lo/ws$2;-><init>(Lo/ws;)V

    iput-object v0, p0, Lo/ws;->ah:Ljava/lang/Runnable;

    .line 184
    iput-object p1, p0, Lo/ws;->d:Landroid/content/Context;

    .line 185
    iput-object p3, p0, Lo/ws;->f:Lo/wx;

    .line 186
    iput-object p5, p0, Lo/ws;->g:Ljava/lang/String;

    .line 187
    iput-object p6, p0, Lo/ws;->j:Ljava/lang/String;

    .line 188
    iput-wide p7, p0, Lo/ws;->q:J

    .line 189
    iput-object p4, p0, Lo/ws;->i:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

    .line 190
    invoke-static {p1}, Lo/pm;->d(Landroid/content/Context;)Lo/pm;

    move-result-object p3

    iput-object p3, p0, Lo/ws;->r:Lo/pm;

    .line 191
    new-instance p3, Lo/pD;

    iget-object p4, p0, Lo/ws;->d:Landroid/content/Context;

    iget-object p7, p0, Lo/ws;->r:Lo/pm;

    invoke-direct {p3, p4, p7}, Lo/pD;-><init>(Landroid/content/Context;Lo/pm;)V

    iput-object p3, p0, Lo/ws;->t:Lo/pD;

    .line 193
    iput-object p2, p0, Lo/ws;->n:Landroid/os/Handler;

    .line 194
    new-instance p2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    iget-object p3, p0, Lo/ws;->n:Landroid/os/Handler;

    iget-wide p7, p0, Lo/ws;->q:J

    invoke-direct {p2, p3, p7, p8}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;-><init>(Landroid/os/Handler;J)V

    iput-object p2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    .line 195
    iget-object p2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {p2, p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$Application;)V

    .line 197
    new-instance p2, Lo/wP;

    iget-object p3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object p4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p2, p5, p6, p3, p4}, Lo/wP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lo/ws;->E:Lo/wP;

    .line 198
    new-instance p2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    iget-object p3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object p4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p2, p5, p6, p3, p4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 199
    new-instance p2, Lo/wi;

    iget-object p3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object p4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p2, p5, p6, p3, p4}, Lo/wi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lo/ws;->L:Lo/wi;

    .line 200
    iput-object p9, p0, Lo/ws;->o:Ljava/lang/String;

    .line 202
    iput-object p10, p0, Lo/ws;->l:Lo/wG;

    .line 203
    iget-wide p2, p0, Lo/ws;->q:J

    invoke-virtual {p10, p2, p3, p0}, Lo/wG;->d(JLo/wU$ActionBar;)Lo/xa;

    move-result-object p2

    iput-object p2, p0, Lo/ws;->s:Lo/xa;

    const-string p2, ""

    .line 205
    iput-object p2, p0, Lo/ws;->V:Ljava/lang/String;

    .line 207
    invoke-static {p1}, Lo/sW;->a(Landroid/content/Context;)Lo/wB;

    move-result-object p1

    iput-object p1, p0, Lo/ws;->D:Lo/wB;

    .line 208
    invoke-direct {p0}, Lo/ws;->y()V

    .line 210
    iget-object p1, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {p1, p11}, Lo/wP;->c(Ljava/lang/String;)Lo/wP;

    .line 211
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lo/ws;->Y:I

    .line 212
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/ws;->P:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lo/ws;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/ws;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 642
    iput-object p1, p0, Lo/ws;->h:Ljava/lang/String;

    .line 643
    iput-object p2, p0, Lo/ws;->m:Ljava/lang/String;

    .line 644
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v0, p1, p2}, Lo/wP;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/ws;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/ws;->F:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    return-object p0
.end method

.method static synthetic c(Lo/ws;)Ljava/lang/Runnable;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/ws;->ag:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c(Z)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v1, "subtitle"

    goto :goto_0

    :cond_0
    const-string v1, "media/network"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_playreport"

    const-string v2, "onRebuffering(%s)"

    .line 670
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 671
    new-instance v0, Lo/wu;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/wu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/ws;->P:Landroid/util/SparseArray;

    const/4 v2, 0x2

    .line 672
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tH$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/wu;->d(Lo/tH$StateListAnimator;)Lo/wu;

    move-result-object v0

    .line 673
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v1

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/wu;->b(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wu;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 674
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/wu;->d(J)Lo/wu;

    move-result-object v0

    .line 675
    invoke-virtual {v0, p1}, Lo/wu;->b(Z)Lo/wu;

    move-result-object p1

    .line 676
    invoke-direct {p0}, Lo/ws;->v()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/wu;->e(J)Lo/wu;

    move-result-object p1

    .line 677
    invoke-direct {p0}, Lo/ws;->n()J

    move-result-wide v0

    iget-object v2, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-virtual {p1, v0, v1, v2}, Lo/wu;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)Lo/wo;

    move-result-object p1

    .line 678
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    return-void
.end method

.method private d(Ljava/lang/String;J)V
    .locals 2

    .line 905
    iget-object v0, p0, Lo/ws;->J:Ljava/util/Map;

    monitor-enter v0

    .line 906
    :try_start_0
    iget-object v1, p0, Lo/ws;->J:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    iget-object v1, p0, Lo/ws;->J:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic d(Lo/ws;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lo/ws;->C:Z

    return p0
.end method

.method static synthetic e(Lo/ws;)Ljava/lang/Runnable;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/ws;->ah:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;)V
    .locals 6

    const-string v0, "nf_playreport"

    const-string v1, "onPlaybackResumed()"

    .line 682
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->c:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-ne p1, v0, :cond_0

    .line 684
    new-instance p1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    iget-object v0, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v1, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/ws;->I:Lo/wY;

    .line 685
    invoke-virtual {v0}, Lo/wY;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;->a(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    move-result-object p1

    .line 686
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v0

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;->d(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    move-result-object p1

    .line 687
    invoke-direct {p0}, Lo/ws;->v()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;->c(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    move-result-object p1

    const/4 v0, 0x0

    .line 688
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;->d(Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    move-result-object p1

    .line 689
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    goto/16 :goto_4

    .line 690
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->i:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->j:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 703
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->f:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-eq p1, v0, :cond_9

    .line 704
    new-instance p1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    iget-object v0, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lo/ws;->q:J

    .line 705
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->d(Ljava/lang/Long;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->B:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->e(Ljava/lang/Long;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->H:Lo/wY;

    if-nez v0, :cond_3

    goto :goto_1

    .line 707
    :cond_3
    invoke-virtual {v0}, Lo/wY;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->b(Ljava/lang/Long;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    .line 708
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->c(Ljava/lang/Long;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->P:Landroid/util/SparseArray;

    const/4 v1, 0x2

    .line 709
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/tH$StateListAnimator;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->c(Lo/tH$StateListAnimator;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->N:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    .line 710
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->I:Lo/wY;

    .line 711
    invoke-virtual {v0}, Lo/wY;->b()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->c(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    move-result-object p1

    .line 712
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v2

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->b(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    move-result-object p1

    .line 713
    invoke-direct {p0}, Lo/ws;->n()J

    move-result-wide v2

    iget-object v0, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-virtual {p1, v2, v3, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)Lo/wo;

    .line 714
    sget-object v0, Lo/ws$1;->d:[I

    iget-object v2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 724
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson$Reason;->SKIP:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson$Reason;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson$Reason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    .line 725
    invoke-direct {p0}, Lo/ws;->t()V

    goto :goto_2

    .line 720
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson$Reason;->REPOS:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson$Reason;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson$Reason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    .line 721
    invoke-direct {p0}, Lo/ws;->t()V

    goto :goto_2

    .line 716
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson$Reason;->REBUFFER:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson$Reason;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson$Reason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ResumePlayJson;

    .line 717
    invoke-direct {p0}, Lo/ws;->t()V

    .line 728
    :goto_2
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    goto :goto_4

    .line 693
    :cond_7
    :goto_3
    iget-object p1, p0, Lo/ws;->K:Lo/wj;

    if-eqz p1, :cond_8

    .line 694
    iget-object v0, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lo/wj;->a(J)Lo/wj;

    .line 695
    iget-object p1, p0, Lo/ws;->K:Lo/wj;

    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    .line 696
    iput-object v1, p0, Lo/ws;->K:Lo/wj;

    .line 698
    :cond_8
    iget-object p1, p0, Lo/ws;->M:Lo/wV;

    if-eqz p1, :cond_9

    .line 699
    iget-object v0, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lo/wV;->d(J)Lo/wV;

    .line 700
    iget-object p1, p0, Lo/ws;->M:Lo/wV;

    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    .line 701
    iput-object v1, p0, Lo/ws;->M:Lo/wV;

    :cond_9
    :goto_4
    return-void
.end method

.method private f()V
    .locals 10

    .line 600
    iget-boolean v0, p0, Lo/ws;->T:Z

    if-nez v0, :cond_1

    const-string v0, "nf_playreport"

    const-string v1, "setStartplayFieldsOnTransitionIfNeeded() - starting new timers for playback"

    .line 602
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v0}, Lo/wP;->a()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lo/ws;->a(JJ)V

    .line 605
    invoke-direct {p0}, Lo/ws;->n()J

    move-result-wide v8

    const-wide/16 v0, 0x7d0

    cmp-long v2, v8, v0

    if-lez v2, :cond_0

    .line 607
    iget-object v4, p0, Lo/ws;->E:Lo/wP;

    const/4 v5, 0x1

    move-wide v6, v8

    invoke-virtual/range {v4 .. v9}, Lo/wP;->c(ZJJ)V

    .line 613
    :cond_0
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/wP;->c(Z)Lo/wP;

    :cond_1
    return-void
.end method

.method static synthetic i()J
    .locals 2

    .line 73
    sget-wide v0, Lo/ws;->b:J

    return-wide v0
.end method

.method static synthetic i(Lo/ws;)Lo/wi;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/ws;->L:Lo/wi;

    return-object p0
.end method

.method private k()V
    .locals 5

    const-string v0, "nf_playreport"

    const-string v1, "onPaused()"

    .line 660
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 662
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;->a(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    move-result-object v0

    .line 663
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v1

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;->d(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    move-result-object v0

    .line 664
    invoke-direct {p0}, Lo/ws;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;->c(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    move-result-object v0

    const/4 v1, 0x1

    .line 665
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;->d(Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StateChangedJson;

    move-result-object v0

    .line 666
    invoke-virtual {p0, v0}, Lo/ws;->e(Lo/wo;)V

    return-void
.end method

.method private l()V
    .locals 2

    const-string v0, "nf_playreport"

    const-string v1, "onPlaybackStarted()"

    .line 649
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lo/ws;->r:Lo/pm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/pm;->d(Z)V

    .line 655
    invoke-direct {p0}, Lo/ws;->o()V

    .line 656
    invoke-direct {p0}, Lo/ws;->t()V

    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 3

    .line 788
    iget-object v0, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->h(I)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private n()J
    .locals 7

    .line 784
    iget-object v0, p0, Lo/ws;->y:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v3

    iget-object v0, p0, Lo/ws;->y:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method private o()V
    .locals 14

    .line 734
    iget-object v0, p0, Lo/ws;->A:Lo/tG;

    if-eqz v0, :cond_3

    .line 736
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    .line 741
    iget-object v2, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v2}, Lo/wP;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    .line 742
    iget-object v4, p0, Lo/ws;->A:Lo/tG;

    iget-wide v5, p0, Lo/ws;->q:J

    invoke-interface {v4, v5, v6, v2, v3}, Lo/tG;->e(JJ)Ljava/util/List;

    move-result-object v2

    .line 743
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/tE;

    .line 744
    invoke-virtual {v8}, Lo/tE;->b()I

    move-result v10

    if-ne v10, v9, :cond_1

    .line 745
    invoke-virtual {v8}, Lo/tE;->h()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {v8}, Lo/tE;->b()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 747
    invoke-virtual {v8}, Lo/tE;->h()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_0

    .line 750
    :cond_2
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v10

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v12

    .line 751
    iget-object v8, p0, Lo/ws;->E:Lo/wP;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v9, v0

    invoke-virtual/range {v8 .. v13}, Lo/wP;->c(ZJJ)V

    .line 758
    :cond_3
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    .line 759
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v1

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/wP;->a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->X:Lo/wY;

    .line 760
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/wP;->a(Ljava/lang/Long;)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 761
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/wP;->e(Ljava/lang/Long;)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->B:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_1

    .line 762
    :cond_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lo/wP;->b(Ljava/lang/Long;)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->H:Lo/wY;

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_2

    .line 763
    :cond_5
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lo/wP;->d(Ljava/lang/Long;)Lo/wP;

    move-result-object v0

    iget-wide v3, p0, Lo/ws;->q:J

    .line 764
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/wP;->c(Ljava/lang/Long;)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 765
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/wP;->a(J)Lo/wP;

    move-result-object v0

    .line 766
    invoke-direct {p0}, Lo/ws;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/wP;->e(Ljava/lang/String;)Lo/wP;

    move-result-object v0

    .line 767
    invoke-direct {p0}, Lo/ws;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/wP;->d(Ljava/lang/String;)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->u:Lo/tN;

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_3

    .line 768
    :cond_6
    invoke-interface {v1}, Lo/tN;->c()Lo/tN$TaskDescription;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lo/wP;->a(Lo/tN$TaskDescription;)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->o:Ljava/lang/String;

    .line 769
    invoke-virtual {v0, v1}, Lo/wP;->g(Ljava/lang/String;)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->x:Lo/ty;

    if-nez v1, :cond_7

    move-object v1, v2

    goto :goto_4

    .line 770
    :cond_7
    invoke-virtual {v1}, Lo/ty;->f()Lo/vK;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lo/wP;->a(Lo/vK;)Lo/wP;

    move-result-object v0

    .line 771
    invoke-direct {p0}, Lo/ws;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/wP;->b(Z)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->r:Lo/pm;

    .line 772
    invoke-virtual {v0, v1}, Lo/wP;->e(Lo/pm;)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->k:Lo/xd;

    if-nez v1, :cond_8

    const/4 v1, -0x1

    goto :goto_5

    .line 773
    :cond_8
    invoke-virtual {v1}, Lo/xd;->b()I

    move-result v1

    :goto_5
    invoke-virtual {v0, v1}, Lo/wP;->c(I)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->k:Lo/xd;

    if-nez v1, :cond_9

    goto :goto_6

    .line 774
    :cond_9
    invoke-virtual {v1}, Lo/xd;->d()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v2}, Lo/wP;->f(Ljava/lang/String;)Lo/wP;

    move-result-object v0

    .line 775
    invoke-direct {p0}, Lo/ws;->n()J

    move-result-wide v1

    iget-object v3, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-virtual {v0, v1, v2, v3}, Lo/wP;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)Lo/wo;

    .line 776
    iget-object v0, p0, Lo/ws;->J:Ljava/util/Map;

    monitor-enter v0

    .line 777
    :try_start_0
    iget-object v1, p0, Lo/ws;->E:Lo/wP;

    iget-object v2, p0, Lo/ws;->J:Ljava/util/Map;

    iget-object v3, p0, Lo/ws;->I:Lo/wY;

    invoke-virtual {v1, v2, v3}, Lo/wP;->c(Ljava/util/Map;Lo/wY;)Lo/wP;

    .line 778
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v0}, Lo/wP;->c()V

    .line 780
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {p0, v0}, Lo/ws;->e(Lo/wo;)V

    return-void

    :catchall_0
    move-exception v1

    .line 778
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private p()J
    .locals 2

    .line 1165
    iget-object v0, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    if-eqz v0, :cond_0

    .line 1166
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 1169
    :cond_0
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v0}, Lo/wP;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method private q()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1182
    iget-object v1, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "nf_playreport"

    const-string v3, "onTimedTextSwitch(%s)"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1183
    new-instance v0, Lo/wV;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v5, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4, v5}, Lo/wV;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lo/wV$TaskDescription;

    iget-object v3, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    .line 1184
    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/wV$TaskDescription;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Lo/wV;->b(Lo/wV$TaskDescription;)Lo/wV;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 1185
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/wV;->a(J)Lo/wV;

    move-result-object v0

    iput-object v0, p0, Lo/ws;->M:Lo/wV;

    return-void
.end method

.method private r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;
    .locals 1

    .line 1178
    iget-object v0, p0, Lo/ws;->v:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private s()V
    .locals 5

    .line 994
    iget-object v0, p0, Lo/ws;->P:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ws;->S:Lo/ta$TaskDescription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ws;->Q:Lo/wY;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    iget-object v2, p0, Lo/ws;->P:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tH$StateListAnimator;

    iget v1, v1, Lo/tH$StateListAnimator;->j:I

    iget-object v2, p0, Lo/ws;->S:Lo/ta$TaskDescription;

    iget-object v3, p0, Lo/ws;->Q:Lo/wY;

    invoke-virtual {v3}, Lo/wY;->b()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(ILo/ta$TaskDescription;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 997
    iget-object v3, p0, Lo/ws;->P:Landroid/util/SparseArray;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lo/ws;->S:Lo/ta$TaskDescription;

    aput-object v3, v0, v2

    iget-object v2, p0, Lo/ws;->Q:Lo/wY;

    aput-object v2, v0, v1

    const-string v1, "nf_playreport"

    const-string v2, "unable to add playable duration (null data): %s, %s, %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private t()V
    .locals 6

    .line 796
    iget-object v0, p0, Lo/ws;->J:Ljava/util/Map;

    monitor-enter v0

    .line 797
    :try_start_0
    iget-object v1, p0, Lo/ws;->J:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    monitor-exit v0

    return-void

    .line 800
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;

    iget-object v2, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v5, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lo/ws;->I:Lo/wY;

    .line 801
    invoke-virtual {v2}, Lo/wY;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;->d(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;

    move-result-object v1

    iget-object v2, p0, Lo/ws;->J:Ljava/util/Map;

    iget-object v3, p0, Lo/ws;->I:Lo/wY;

    .line 802
    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;->e(Ljava/util/Map;Lo/wY;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;

    move-result-object v1

    .line 803
    invoke-direct {p0}, Lo/ws;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;

    move-result-object v1

    .line 804
    sget-object v2, Lo/ws$1;->d:[I

    iget-object v3, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 806
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;->START:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;

    goto :goto_0

    .line 815
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;->SKIP:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;

    goto :goto_0

    .line 812
    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;->REPOS:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;

    goto :goto_0

    .line 809
    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;->REBUFFER:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson$Reason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/StartPlayEventJson;

    .line 818
    :goto_0
    invoke-virtual {p0, v1}, Lo/ws;->e(Lo/wo;)V

    .line 819
    iget-object v1, p0, Lo/ws;->J:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 820
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private u()Ljava/lang/String;
    .locals 2

    .line 1322
    iget-object v0, p0, Lo/ws;->D:Lo/wB;

    invoke-virtual {v0}, Lo/wB;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1323
    iget-object v1, p0, Lo/ws;->V:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1324
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    iget-object v0, p0, Lo/ws;->V:Ljava/lang/String;

    goto :goto_0

    .line 1328
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/ws;->V:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private v()J
    .locals 4

    .line 1277
    iget-object v0, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-ne v0, v1, :cond_0

    .line 1279
    iget-wide v0, p0, Lo/ws;->W:J

    iget-object v2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 1281
    :cond_0
    iget-wide v0, p0, Lo/ws;->W:J

    return-wide v0
.end method

.method private w()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1189
    iget-object v2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_playreport"

    const-string v3, "onAudioSwitch(%s)"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1190
    new-instance v1, Lo/wj;

    iget-object v2, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v5, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lo/wj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lo/wj$Activity;

    iget-object v3, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    .line 1191
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-direct {v2, v0}, Lo/wj$Activity;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v1, v2}, Lo/wj;->d(Lo/wj$Activity;)Lo/wj;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 1192
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/wj;->e(J)Lo/wj;

    move-result-object v0

    iput-object v0, p0, Lo/ws;->K:Lo/wj;

    return-void
.end method

.method private x()Z
    .locals 1

    .line 1345
    iget-object v0, p0, Lo/ws;->v:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v0

    instance-of v0, v0, Lo/Bp;

    :goto_0
    return v0
.end method

.method private y()V
    .locals 4

    .line 1197
    iget-object v0, p0, Lo/ws;->D:Lo/wB;

    invoke-virtual {v0}, Lo/wB;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lo/ws;->l:Lo/wG;

    iget-wide v1, p0, Lo/ws;->q:J

    invoke-virtual {v0, v1, v2}, Lo/wG;->b(J)V

    .line 1200
    :cond_0
    iget-object v0, p0, Lo/ws;->D:Lo/wB;

    invoke-virtual {v0}, Lo/wB;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ws;->D:Lo/wB;

    invoke-virtual {v0}, Lo/wB;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    :cond_1
    iget-object v0, p0, Lo/ws;->n:Landroid/os/Handler;

    iget-object v1, p0, Lo/ws;->ag:Ljava/lang/Runnable;

    sget-wide v2, Lo/ws;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1203
    :cond_2
    iget-object v0, p0, Lo/ws;->D:Lo/wB;

    invoke-virtual {v0}, Lo/wB;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1204
    iget-object v0, p0, Lo/ws;->n:Landroid/os/Handler;

    iget-object v1, p0, Lo/ws;->ah:Ljava/lang/Runnable;

    sget-wide v2, Lo/ws;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1206
    :cond_3
    iget-object v0, p0, Lo/ws;->D:Lo/wB;

    invoke-virtual {v0}, Lo/wB;->g()Z

    move-result v0

    iput-boolean v0, p0, Lo/ws;->Z:Z

    .line 1207
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    iget-boolean v1, p0, Lo/ws;->Z:Z

    invoke-virtual {v0, v1}, Lo/wP;->a(Z)Lo/wP;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->D:Lo/wB;

    .line 1208
    invoke-virtual {v1}, Lo/wB;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/wP;->e(Z)Lo/wP;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "firstLocationRequestReceived"

    .line 421
    invoke-virtual {p0, v0}, Lo/ws;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILo/tH$PictureInPictureParams;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 297
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "nf_playreport"

    const-string v3, "onTrackSelection(%s) - logging of track type not supported!"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 300
    :cond_0
    iget-object v4, v1, Lo/ws;->R:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v2, Lo/tH$PictureInPictureParams;->e:Lcom/google/android/exoplayer2/Format;

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    iget-object v4, v1, Lo/ws;->R:Lcom/google/android/exoplayer2/Format;

    if-nez v4, :cond_2

    .line 308
    iget-object v4, v1, Lo/ws;->E:Lo/wP;

    iget-object v5, v2, Lo/tH$PictureInPictureParams;->e:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v4, v5}, Lo/wP;->c(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    .line 314
    :cond_2
    new-instance v4, Lo/wm;

    iget-object v5, v1, Lo/ws;->g:Ljava/lang/String;

    iget-object v6, v1, Lo/ws;->j:Ljava/lang/String;

    iget-object v7, v1, Lo/ws;->h:Ljava/lang/String;

    iget-object v8, v1, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lo/wm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lo/ws;->I:Lo/wY;

    .line 315
    invoke-virtual {v5}, Lo/wY;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lo/wm;->a(J)Lo/wm;

    move-result-object v4

    iget-object v5, v1, Lo/ws;->R:Lcom/google/android/exoplayer2/Format;

    .line 316
    invoke-virtual {v4, v5}, Lo/wm;->a(Lcom/google/android/exoplayer2/Format;)Lo/wm;

    move-result-object v4

    iget-object v5, v2, Lo/tH$PictureInPictureParams;->e:Lcom/google/android/exoplayer2/Format;

    .line 317
    invoke-virtual {v4, v5}, Lo/wm;->b(Lcom/google/android/exoplayer2/Format;)Lo/wm;

    move-result-object v4

    iget-wide v5, v2, Lo/tH$PictureInPictureParams;->h:J

    const/4 v7, 0x0

    .line 318
    invoke-virtual {v4, v5, v6, v7}, Lo/wm;->a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wm;

    move-result-object v4

    iget v5, v2, Lo/tH$PictureInPictureParams;->c:I

    .line 319
    invoke-virtual {v4, v5}, Lo/wm;->c(I)Lo/wm;

    move-result-object v4

    .line 320
    invoke-direct/range {p0 .. p0}, Lo/ws;->n()J

    move-result-wide v5

    iget-object v7, v1, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-virtual {v4, v5, v6, v7}, Lo/wm;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)Lo/wo;

    move-result-object v4

    .line 321
    invoke-virtual {v1, v4}, Lo/ws;->e(Lo/wo;)V

    .line 323
    :goto_0
    iget-object v4, v2, Lo/tH$PictureInPictureParams;->e:Lcom/google/android/exoplayer2/Format;

    iput-object v4, v1, Lo/ws;->R:Lcom/google/android/exoplayer2/Format;

    .line 326
    iget-object v4, v1, Lo/ws;->D:Lo/wB;

    invoke-virtual {v4}, Lo/wB;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x0

    .line 328
    iget-object v6, v1, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    if-eqz v6, :cond_3

    .line 329
    invoke-interface {v6, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->d(I)J

    move-result-wide v3

    move-wide v13, v3

    goto :goto_1

    :cond_3
    move-wide v13, v4

    .line 331
    :goto_1
    iget-object v3, v1, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v4

    .line 332
    iget-object v15, v1, Lo/ws;->L:Lo/wi;

    monitor-enter v15

    .line 333
    :try_start_0
    iget-object v3, v1, Lo/ws;->L:Lo/wi;

    iget-object v5, v2, Lo/tH$PictureInPictureParams;->b:[I

    invoke-virtual {v3, v0, v5}, Lo/wi;->c(I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 334
    iget-object v3, v1, Lo/ws;->L:Lo/wi;

    invoke-virtual {v1, v3}, Lo/ws;->e(Lo/wo;)V

    .line 335
    iget-object v3, v1, Lo/ws;->L:Lo/wi;

    invoke-virtual {v3}, Lo/wi;->a()V

    .line 337
    :cond_4
    iget-object v3, v1, Lo/ws;->L:Lo/wi;

    iget-object v5, v2, Lo/tH$PictureInPictureParams;->b:[I

    iget-object v6, v1, Lo/ws;->I:Lo/wY;

    invoke-virtual {v6}, Lo/wY;->b()J

    move-result-wide v6

    iget v8, v2, Lo/tH$PictureInPictureParams;->a:I

    iget-wide v9, v2, Lo/tH$PictureInPictureParams;->h:J

    iget-wide v11, v2, Lo/tH$PictureInPictureParams;->j:J

    iget v0, v2, Lo/tH$PictureInPictureParams;->c:I

    move/from16 v16, v0

    iget v0, v2, Lo/tH$PictureInPictureParams;->d:I

    move/from16 v17, v0

    iget-object v0, v1, Lo/ws;->B:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    .line 340
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->a()I

    move-result v0

    iget v2, v2, Lo/tH$PictureInPictureParams;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v18, v2

    move-object v2, v3

    move/from16 v3, p1

    move-object/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v0

    .line 337
    :try_start_1
    invoke-virtual/range {v2 .. v18}, Lo/wi;->e(ILcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;[IJIJJJIIII)V

    .line 341
    monitor-exit v19

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v19, v15

    :goto_2
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public a(JJ)V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 461
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "nf_playreport"

    const-string v3, "userPlay(%s, %s)"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 462
    iget-boolean v0, p0, Lo/ws;->T:Z

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v3, v0, p3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 470
    sget-wide v5, Lo/ws;->e:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    :cond_1
    const-wide/16 p3, -0x3e8

    cmp-long v5, v3, p3

    if-ltz v5, :cond_2

    .line 471
    sget-wide p3, Lo/ws;->e:J

    cmp-long v5, v3, p3

    if-lez v5, :cond_3

    .line 473
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid UI play delay "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/ws;->o:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_3
    move-wide p3, v0

    .line 477
    :cond_4
    new-instance v3, Lo/wY;

    invoke-direct {v3, p3, p4}, Lo/wY;-><init>(J)V

    iput-object v3, p0, Lo/ws;->X:Lo/wY;

    .line 479
    new-instance p3, Lo/wY;

    invoke-direct {p3, v0, v1}, Lo/wY;-><init>(J)V

    iput-object p3, p0, Lo/ws;->I:Lo/wY;

    .line 481
    iget-object p3, p0, Lo/ws;->E:Lo/wP;

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lo/wP;->a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wP;

    const-string p1, "openSession"

    .line 482
    invoke-virtual {p0, p1}, Lo/ws;->d(Ljava/lang/String;)V

    .line 485
    iget-object p1, p0, Lo/ws;->z:Lo/sE;

    if-eqz p1, :cond_6

    .line 486
    invoke-interface {p1}, Lo/sE;->R()J

    move-result-wide p1

    iget-object p3, p0, Lo/ws;->z:Lo/sE;

    invoke-interface {p3}, Lo/sE;->O()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    move-result-object p3

    if-nez p3, :cond_5

    const/4 p3, 0x0

    goto :goto_0

    :cond_5
    iget-object p3, p0, Lo/ws;->z:Lo/sE;

    invoke-interface {p3}, Lo/sE;->O()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->name()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lo/ws;->c(JLjava/lang/String;)V

    .line 490
    :cond_6
    invoke-virtual {p0}, Lo/ws;->h()V

    .line 491
    new-instance p1, Lo/xd;

    iget-object p2, p0, Lo/ws;->d:Landroid/content/Context;

    iget-object p3, p0, Lo/ws;->n:Landroid/os/Handler;

    invoke-direct {p1, p2, p3, p0}, Lo/xd;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/xd$Activity;)V

    iput-object p1, p0, Lo/ws;->k:Lo/xd;

    .line 492
    new-instance p1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    iget-object v4, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v5, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v6, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v7, p0, Lo/ws;->m:Ljava/lang/String;

    iget-object p2, p0, Lo/ws;->I:Lo/wY;

    invoke-virtual {p2}, Lo/wY;->b()J

    move-result-wide v8

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/ws;->F:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    .line 494
    iput-boolean v2, p0, Lo/ws;->T:Z

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lo/ws;->B:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;J)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 504
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "nf_playreport"

    const-string v2, "userStop(%s, %s)"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 505
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    iget-object p1, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    sget-object p2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$EndReason;->STOPPED:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$EndReason;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$EndReason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    goto :goto_3

    .line 506
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/ws;->v:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    .line 507
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    iget-wide v1, p0, Lo/ws;->q:J

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;-><init>(JJ)V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->c(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v0

    .line 508
    :goto_2
    new-instance p1, Lo/wR;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p1, v1, v2, v3, v4}, Lo/wR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 509
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lo/wR;->a(J)Lo/wR;

    move-result-object p1

    .line 510
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v1

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lo/wR;->b(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wR;

    move-result-object p1

    .line 511
    invoke-direct {p0}, Lo/ws;->v()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lo/wR;->e(J)Lo/wR;

    move-result-object p1

    .line 512
    invoke-virtual {p1, p2, p3, v0}, Lo/wR;->a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wR;

    move-result-object p1

    .line 513
    iget-object p2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 516
    iget-object p2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lo/wR;->d(J)Lo/wR;

    .line 518
    :cond_4
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    .line 520
    iget-object p1, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->b()V

    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lo/ws;->V:Ljava/lang/String;

    const-string p1, "startPlayback"

    .line 348
    invoke-virtual {p0, p1}, Lo/ws;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lo/tH$ActionBar;)V
    .locals 3

    .line 389
    new-instance v0, Lo/wq;

    invoke-direct {v0}, Lo/wq;-><init>()V

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 390
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/wq;->e(J)Lo/wq;

    move-result-object v0

    .line 391
    invoke-virtual {v0, p1}, Lo/wq;->b(Lo/tH$ActionBar;)Lo/wq;

    move-result-object p1

    .line 392
    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->e(Lo/wq;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nf_playreport"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lo/tN;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lo/ws;->u:Lo/tN;

    return-void
.end method

.method public a(Lorg/chromium/net/RequestFinishedInfo;Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wA;)V
    .locals 8

    .line 1265
    iget-object v0, p0, Lo/ws;->F:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ws;->N:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ws;->D:Lo/wB;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/wB;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ws;->D:Lo/wB;

    .line 1266
    invoke-virtual {v0}, Lo/wB;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;->d(Lo/wA;Lorg/chromium/net/RequestFinishedInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    :cond_0
    iget-object v0, p0, Lo/ws;->F:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    monitor-enter v0

    .line 1271
    :try_start_0
    iget-object v1, p0, Lo/ws;->F:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    iget-object v2, p0, Lo/ws;->I:Lo/wY;

    invoke-virtual {v2}, Lo/wY;->b()J

    move-result-wide v2

    iget-object v4, p0, Lo/ws;->N:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;->c(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;Lorg/chromium/net/RequestFinishedInfo;Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wA;)V

    .line 1272
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "nf_playreport"

    const-string v1, "setUsedLDL(true)"

    .line 840
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/wP;->d(Z)V

    return-void
.end method

.method public b(JJJJ)V
    .locals 10

    move-object v0, p0

    .line 358
    iget-object v1, v0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->e(JJJJ)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;)V
    .locals 10

    .line 1218
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    new-instance v0, Lo/wY;

    invoke-direct {v0}, Lo/wY;-><init>()V

    iput-object v0, p0, Lo/ws;->H:Lo/wY;

    .line 1221
    :cond_0
    sget-object v0, Lo/ws$1;->d:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 1242
    :cond_1
    invoke-direct {p0}, Lo/ws;->q()V

    goto :goto_1

    .line 1239
    :cond_2
    invoke-direct {p0}, Lo/ws;->k()V

    goto :goto_1

    .line 1223
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-ne p1, v0, :cond_4

    .line 1224
    invoke-direct {p0}, Lo/ws;->l()V

    goto :goto_1

    .line 1226
    :cond_4
    invoke-direct {p0, p1}, Lo/ws;->e(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;)V

    goto :goto_1

    .line 1245
    :cond_5
    invoke-direct {p0}, Lo/ws;->w()V

    goto :goto_1

    .line 1230
    :cond_6
    iget-object v0, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide v2

    .line 1231
    iget-object v0, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide v4

    .line 1232
    iget-object v0, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_7

    .line 1233
    sget-wide v8, Lo/ws;->c:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_7

    .line 1235
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sget-wide v4, Lo/ws;->a:J

    sub-long/2addr v2, v4

    cmp-long v0, v6, v2

    if-gez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    .line 1236
    :goto_0
    invoke-direct {p0, v1}, Lo/ws;->c(Z)V

    .line 1248
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-ne p1, v0, :cond_8

    .line 1249
    iget-wide v0, p0, Lo/ws;->W:J

    iget-object p1, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ws;->W:J

    .line 1250
    invoke-direct {p0}, Lo/ws;->s()V

    .line 1252
    :cond_8
    sget-object p1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-ne p2, p1, :cond_9

    .line 1253
    new-instance p1, Lo/wY;

    invoke-direct {p1}, Lo/wY;-><init>()V

    iput-object p1, p0, Lo/ws;->Q:Lo/wY;

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_playreport"

    const-string v2, "setSubtitleProfile(%s)"

    .line 860
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 861
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v0, p1}, Lo/wP;->j(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 442
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "nf_playreport"

    const-string v2, "onVolumeChanged(%s, %s)"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    new-instance v0, Lo/xb;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/xb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 445
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xb;->d(J)Lo/xb;

    move-result-object v0

    .line 446
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v1

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/xb;->d(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/xb;

    move-result-object v0

    .line 447
    invoke-virtual {v0, p3}, Lo/xb;->a(I)Lo/xb;

    move-result-object p3

    .line 448
    invoke-virtual {p3, p2}, Lo/xb;->b(I)Lo/xb;

    move-result-object p2

    .line 449
    invoke-virtual {p2, p1}, Lo/xb;->a(Ljava/lang/String;)Lo/xb;

    move-result-object p1

    .line 450
    invoke-direct {p0}, Lo/ws;->n()J

    move-result-wide p2

    iget-object v0, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-virtual {p1, p2, p3, v0}, Lo/xb;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)Lo/wo;

    move-result-object p1

    .line 451
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_playreport"

    const-string v2, "reportKeyStartplayEvent(%s)"

    .line 872
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 873
    invoke-direct {p0, p1, p2, p3}, Lo/ws;->d(Ljava/lang/String;J)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1340
    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->i(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->g(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 1341
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v0, p1}, Lo/wP;->b(Ljava/lang/String;)Lo/wP;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/wP;->a(Ljava/lang/String;)Lo/wP;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/xK;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1155
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    new-instance v0, Lo/wW;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/wW;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/wW;->e(Ljava/util/List;)Lo/wW;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    :cond_0
    return-void
.end method

.method public b(Lo/tG;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lo/ws;->A:Lo/tG;

    return-void
.end method

.method public b(Lo/tH$FragmentManager;)V
    .locals 3

    .line 398
    new-instance v0, Lo/wM;

    invoke-direct {v0}, Lo/wM;-><init>()V

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 399
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/wM;->d(J)Lo/wM;

    move-result-object v0

    .line 400
    invoke-virtual {v0, p1}, Lo/wM;->d(Lo/tH$FragmentManager;)Lo/wM;

    move-result-object p1

    .line 401
    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Lo/wM;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 402
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nf_playreport"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Lo/uF;Lo/uF;J)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 582
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "nf_playreport"

    const-string v1, "onSegmentTransitionEnd(%s, %s, %s)"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 583
    invoke-direct {p0}, Lo/ws;->f()V

    if-eqz p2, :cond_0

    .line 586
    iget-object p1, p0, Lo/ws;->O:Ljava/util/Map;

    iget-object v0, p2, Lo/uF;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    .line 587
    iget-object v0, p0, Lo/ws;->O:Ljava/util/Map;

    iget-object p2, p2, Lo/uF;->a:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-ltz p2, :cond_1

    goto :goto_1

    .line 590
    :cond_1
    iget-object p2, p0, Lo/ws;->I:Lo/wY;

    invoke-virtual {p2}, Lo/wY;->b()J

    move-result-wide p3

    :goto_1
    invoke-virtual {p1, p3, p4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->c(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    .line 591
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    :cond_2
    return-void
.end method

.method public b(Lo/xD;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_playreport"

    const-string v2, "onPlayerError(%s)"

    .line 1259
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1260
    iput-object p1, p0, Lo/ws;->U:Lo/xD;

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1363
    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(Z)V

    return-void
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_playreport"

    const-string v1, "release()"

    .line 824
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-boolean v0, p0, Lo/ws;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 826
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 828
    :try_start_1
    iput-boolean v0, p0, Lo/ws;->C:Z

    .line 829
    iget-object v0, p0, Lo/ws;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 830
    iget-object v0, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->d()V

    .line 831
    iget-object v0, p0, Lo/ws;->k:Lo/xd;

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lo/ws;->k:Lo/xd;

    invoke-virtual {v0}, Lo/xd;->e()V

    .line 834
    :cond_1
    iget-object v0, p0, Lo/ws;->t:Lo/pD;

    invoke-virtual {v0}, Lo/pD;->b()V

    .line 835
    iget-object v0, p0, Lo/ws;->l:Lo/wG;

    iget-wide v1, p0, Lo/ws;->q:J

    invoke-virtual {v0, v1, v2}, Lo/wG;->c(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(J)V
    .locals 3

    .line 971
    new-instance p1, Lo/wp;

    iget-object p2, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v0, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v1, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1, v2}, Lo/wp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lo/ws;->I:Lo/wY;

    .line 972
    invoke-virtual {p2}, Lo/wY;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/wp;->a(J)Lo/wp;

    move-result-object p1

    .line 973
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v0

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lo/wp;->d(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wp;

    move-result-object p1

    .line 974
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    return-void
.end method

.method public c(JLjava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 849
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string v2, "nf_playreport"

    const-string v3, "setManifestCacheHit(%s, %s)"

    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 850
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/wP;->d(Ljava/lang/Boolean;)V

    .line 851
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/wP;->j(Ljava/lang/Long;)V

    .line 852
    iget-object p1, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {p1, p3}, Lo/wP;->i(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;JJ)V
    .locals 14

    move-object v0, p0

    const-string v1, "nf_playreport"

    const-string v2, "onTroughputEstimateProvided"

    .line 426
    invoke-static {v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, v0, Lo/ws;->ad:Lo/wX;

    if-nez v1, :cond_0

    .line 428
    new-instance v1, Lo/wX;

    iget-object v3, v0, Lo/ws;->g:Ljava/lang/String;

    iget-object v4, v0, Lo/ws;->j:Ljava/lang/String;

    iget-object v5, v0, Lo/ws;->h:Ljava/lang/String;

    iget-object v6, v0, Lo/ws;->m:Ljava/lang/String;

    iget-object v2, v0, Lo/ws;->I:Lo/wY;

    invoke-virtual {v2}, Lo/wY;->e()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lo/wX;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object v1, v0, Lo/ws;->ad:Lo/wX;

    .line 429
    :cond_0
    iget-object v8, v0, Lo/ws;->ad:Lo/wX;

    move-object v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lo/wX;->b(Ljava/lang/String;JJ)V

    .line 430
    iget-object v1, v0, Lo/ws;->ad:Lo/wX;

    invoke-virtual {v1}, Lo/wX;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, v0, Lo/ws;->ad:Lo/wX;

    invoke-virtual {p0, v1}, Lo/ws;->e(Lo/wo;)V

    .line 433
    iget-object v1, v0, Lo/ws;->ad:Lo/wX;

    invoke-virtual {v1}, Lo/wX;->a()V

    :cond_1
    return-void
.end method

.method public c(Lo/tP;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lo/ws;->aa:Lo/tP;

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "pauseBuffering"

    .line 353
    invoke-virtual {p0, v0}, Lo/ws;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(JLo/ta$TaskDescription;)V
    .locals 5

    .line 925
    iget-object v0, p0, Lo/ws;->S:Lo/ta$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lo/ta$TaskDescription;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 926
    iget-object v0, p0, Lo/ws;->S:Lo/ta$TaskDescription;

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const-string p2, "nf_playreport"

    const-string p3, "ignoring downstream format change - %s = %s"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lo/ws;->S:Lo/ta$TaskDescription;

    if-eqz v0, :cond_1

    .line 933
    new-instance v0, Lo/wQ;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/wQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lo/wQ;->a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wQ;

    move-result-object p1

    iget-object p2, p0, Lo/ws;->I:Lo/wY;

    .line 935
    invoke-virtual {p2}, Lo/wY;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/wQ;->e(J)Lo/wQ;

    move-result-object p1

    iget-object p2, p3, Lo/ta$TaskDescription;->b:Ljava/lang/String;

    iget-wide v0, p3, Lo/ta$TaskDescription;->d:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 936
    invoke-virtual {p1, p2, v0, v1}, Lo/wQ;->c(Ljava/lang/String;J)Lo/wQ;

    move-result-object p1

    iget-object p2, p0, Lo/ws;->S:Lo/ta$TaskDescription;

    iget-object p2, p2, Lo/ta$TaskDescription;->b:Ljava/lang/String;

    iget-object v0, p0, Lo/ws;->S:Lo/ta$TaskDescription;

    iget-wide v0, v0, Lo/ta$TaskDescription;->d:J

    div-long/2addr v0, v2

    .line 937
    invoke-virtual {p1, p2, v0, v1}, Lo/wQ;->e(Ljava/lang/String;J)Lo/wQ;

    move-result-object p1

    .line 938
    invoke-direct {p0}, Lo/ws;->n()J

    move-result-wide v0

    iget-object p2, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-virtual {p1, v0, v1, p2}, Lo/wQ;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)Lo/wo;

    .line 939
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    .line 940
    invoke-direct {p0}, Lo/ws;->s()V

    .line 942
    :cond_1
    iput-object p3, p0, Lo/ws;->S:Lo/ta$TaskDescription;

    .line 943
    new-instance p1, Lo/wY;

    invoke-direct {p1}, Lo/wY;-><init>()V

    iput-object p1, p0, Lo/ws;->Q:Lo/wY;

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 1

    .line 224
    iput-object p1, p0, Lo/ws;->y:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 225
    iget-object v0, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c(Lcom/google/android/exoplayer2/ExoPlayer;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lo/ws;->v:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_playreport"

    const-string v2, "reportKeyStartplayEvent(%s)"

    .line 866
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 867
    iget-object v0, p0, Lo/ws;->I:Lo/wY;

    invoke-virtual {v0}, Lo/wY;->e()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lo/ws;->d(Ljava/lang/String;J)V

    return-void
.end method

.method public d(Lo/sE;)V
    .locals 3

    const-string v0, "nf_playreport"

    const-string v1, "setManifest()"

    .line 1009
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iput-object p1, p0, Lo/ws;->z:Lo/sE;

    .line 1011
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v0, p1}, Lo/wP;->b(Lo/sE;)V

    .line 1012
    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-interface {p1}, Lo/sE;->y()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 1013
    invoke-interface {p1}, Lo/sE;->ah()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lo/sE;->ag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-interface {p1}, Lo/sE;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lo/sE;->ag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/ws;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Lo/tH$Dialog;J)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "nf_playreport"

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-eqz v5, :cond_0

    .line 363
    iget-wide v3, p0, Lo/ws;->q:J

    cmp-long v5, p2, v3

    if-eqz v5, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 364
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Skip onServerSelection because event is a playlist prefetch. Current reporting viewableId = (%s), reported  = (%s)"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 367
    :cond_0
    iget-object p2, p1, Lo/tH$Dialog;->c:Ljava/lang/String;

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "Skip onServerSelection because reading from local file"

    .line 368
    invoke-static {v2, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 371
    :cond_1
    new-instance p2, Lo/wT;

    iget-object p3, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v5, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p2, p3, v3, v4, v5}, Lo/wT;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lo/ws;->I:Lo/wY;

    .line 372
    invoke-virtual {p3}, Lo/wY;->b()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lo/wT;->d(J)Lo/wT;

    move-result-object p2

    .line 373
    invoke-virtual {p2, p1}, Lo/wT;->c(Lo/tH$Dialog;)Lo/wT;

    move-result-object p1

    .line 374
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    new-array p2, v1, [Ljava/lang/Object;

    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "onServerSelection(%s)"

    invoke-static {v2, p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public d(Lo/ty;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lo/ws;->x:Lo/ty;

    return-void
.end method

.method public d(Z)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1037
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_playreport"

    const-string v4, "playbackClosed(%b)"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1039
    iget-object v1, p0, Lo/ws;->ag:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1040
    iget-object v1, p0, Lo/ws;->ah:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1041
    iget-object v1, p0, Lo/ws;->r:Lo/pm;

    invoke-virtual {v1, v3}, Lo/pm;->d(Z)V

    .line 1043
    iget-object v1, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lo/ws;->U:Lo/xD;

    if-eqz v1, :cond_0

    .line 1045
    iget-object v2, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v2, v1}, Lo/wP;->b(Lo/xD;)Lo/wP;

    .line 1046
    invoke-direct {p0}, Lo/ws;->o()V

    goto/16 :goto_1

    .line 1047
    :cond_0
    iget-object v1, p0, Lo/ws;->U:Lo/xD;

    if-nez v1, :cond_6

    iget-object v1, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1050
    invoke-direct {p0}, Lo/ws;->t()V

    .line 1051
    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    iget-object v2, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v6, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v7, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v8, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v6, v7, v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, p0, Lo/ws;->q:J

    .line 1052
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->c(Ljava/lang/Long;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    move-result-object v1

    iget-object v2, p0, Lo/ws;->I:Lo/wY;

    .line 1053
    invoke-virtual {v2}, Lo/wY;->b()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->e(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    move-result-object v1

    .line 1054
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v6

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v2

    invoke-virtual {v1, v6, v7, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->e(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    move-result-object v1

    .line 1055
    invoke-direct {p0}, Lo/ws;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    move-result-object v1

    iget-object v2, p0, Lo/ws;->o:Ljava/lang/String;

    .line 1056
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    move-result-object v1

    iget-object v2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    .line 1057
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->e()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->a(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    move-result-object v1

    .line 1058
    iget-object v2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v2

    sget-object v6, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-ne v2, v6, :cond_1

    .line 1059
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$AbortedEvent;->STARTPLAY:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$AbortedEvent;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$AbortedEvent;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    goto :goto_0

    .line 1061
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$AbortedEvent;->RESUMEPLAY:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$AbortedEvent;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$AbortedEvent;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    .line 1062
    sget-object v2, Lo/ws$1;->d:[I

    iget-object v6, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v0, :cond_5

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v6, 0x5

    if-eq v2, v6, :cond_2

    goto :goto_0

    .line 1073
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;->AUDIO:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    goto :goto_0

    .line 1070
    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;->SKIP:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    goto :goto_0

    .line 1067
    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;->REPOS:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    goto :goto_0

    .line 1064
    :cond_5
    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;->REBUFFER:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson$ResumePlayReason;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlaybackAbortedJson;

    .line 1077
    :goto_0
    invoke-virtual {p0, v1}, Lo/ws;->e(Lo/wo;)V

    .line 1082
    :cond_6
    :goto_1
    iget-object v1, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-eq v1, v2, :cond_12

    .line 1083
    iget-object v1, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    if-ne v1, v2, :cond_7

    .line 1084
    invoke-direct {p0}, Lo/ws;->s()V

    .line 1089
    :cond_7
    iget-object v1, p0, Lo/ws;->B:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    invoke-virtual {v1, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->e(I)[D

    move-result-object v1

    .line 1090
    iget-object v2, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    iget-object v5, p0, Lo/ws;->N:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    .line 1091
    invoke-virtual {v2, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v2

    .line 1092
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v5

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v2

    iget-object v5, p0, Lo/ws;->I:Lo/wY;

    .line 1093
    invoke-virtual {v5}, Lo/wY;->b()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v2

    iget-wide v5, p0, Lo/ws;->q:J

    .line 1094
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Ljava/lang/Long;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v2

    iget-object v5, p0, Lo/ws;->U:Lo/xD;

    iget-object v6, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    .line 1095
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->d()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->b(Lo/xD;Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v2

    .line 1096
    invoke-direct {p0}, Lo/ws;->v()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v2

    .line 1097
    invoke-direct {p0}, Lo/ws;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v2

    iget-object v5, p0, Lo/ws;->d:Landroid/content/Context;

    .line 1098
    invoke-static {v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/LogAudioSinkType;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v2

    iget-object v5, p0, Lo/ws;->d:Landroid/content/Context;

    .line 1099
    invoke-static {v5}, Lo/xE;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v2

    .line 1100
    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->b(Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v2, p0, Lo/ws;->s:Lo/xa;

    .line 1101
    invoke-virtual {v2}, Lo/xa;->e()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$ActionBar;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d([Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$ActionBar;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v2, p0, Lo/ws;->s:Lo/xa;

    .line 1102
    invoke-virtual {v2}, Lo/xa;->c()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Application;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a([Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Application;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v2, p0, Lo/ws;->s:Lo/xa;

    .line 1103
    invoke-virtual {v2}, Lo/xa;->j()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a(Ljava/util/Map;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v2, p0, Lo/ws;->s:Lo/xa;

    .line 1104
    invoke-virtual {v2}, Lo/xa;->d()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->e(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v2, p0, Lo/ws;->s:Lo/xa;

    .line 1105
    invoke-virtual {v2}, Lo/xa;->a()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->i(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v2, p0, Lo/ws;->x:Lo/ty;

    const/4 v5, 0x0

    if-nez v2, :cond_8

    move-object v2, v5

    goto :goto_2

    .line 1106
    :cond_8
    invoke-virtual {v2}, Lo/ty;->f()Lo/vK;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a(Lo/vK;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v2, p0, Lo/ws;->r:Lo/pm;

    .line 1107
    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->b(Lo/pm;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    aget-wide v2, v1, v3

    .line 1108
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Ljava/lang/Double;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    aget-wide v2, v1, v0

    .line 1109
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a(Ljava/lang/Double;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    aget-wide v0, v1, v4

    .line 1110
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->e(Ljava/lang/Double;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->o:Ljava/lang/String;

    .line 1111
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->j(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    .line 1112
    invoke-direct {p0}, Lo/ws;->x()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->d:Landroid/content/Context;

    .line 1113
    invoke-static {v0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a(Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->d:Landroid/content/Context;

    .line 1114
    invoke-static {v0}, Lo/x;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(I)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->r:Lo/pm;

    .line 1115
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(Lo/pm;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 1116
    iget-object p1, p0, Lo/ws;->D:Lo/wB;

    invoke-virtual {p1}, Lo/wB;->l()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1117
    iget-object p1, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    iget-object v0, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->h()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->b(Ljava/util/Map;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 1120
    :cond_9
    iget-object p1, p0, Lo/ws;->aa:Lo/tP;

    if-eqz p1, :cond_a

    .line 1121
    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    iget-wide v1, p0, Lo/ws;->q:J

    invoke-interface {p1, v1, v2}, Lo/tP;->c(J)Lo/tH$AssistContent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(Lo/tH$AssistContent;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 1125
    :cond_a
    iget-object p1, p0, Lo/ws;->ad:Lo/wX;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lo/wX;->j()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1126
    iget-object p1, p0, Lo/ws;->ad:Lo/wX;

    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    .line 1127
    iget-object p1, p0, Lo/ws;->ad:Lo/wX;

    invoke-virtual {p1}, Lo/wX;->a()V

    .line 1130
    :cond_b
    iget-object p1, p0, Lo/ws;->x:Lo/ty;

    if-eqz p1, :cond_11

    .line 1131
    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    if-nez p1, :cond_c

    move-object p1, v5

    goto :goto_3

    .line 1132
    :cond_c
    invoke-virtual {p1}, Lo/ty;->e()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object p1

    :goto_3
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->x:Lo/ty;

    if-nez v0, :cond_d

    move-object v0, v5

    goto :goto_4

    .line 1133
    :cond_d
    invoke-virtual {v0}, Lo/ty;->a()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->x:Lo/ty;

    if-nez v0, :cond_e

    move-object v0, v5

    goto :goto_5

    .line 1134
    :cond_e
    invoke-virtual {v0}, Lo/ty;->c()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v0

    :goto_5
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->x:Lo/ty;

    if-nez v0, :cond_f

    move-object v0, v5

    goto :goto_6

    .line 1135
    :cond_f
    invoke-virtual {v0}, Lo/ty;->b()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 1136
    invoke-static {}, Lo/ek;->i()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1137
    iget-object p1, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    iget-object v0, p0, Lo/ws;->x:Lo/ty;

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v0}, Lo/ty;->h()Ljava/util/Map;

    move-result-object v5

    :goto_7
    invoke-virtual {p1, v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(Ljava/util/Map;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 1140
    :cond_11
    iget-object p1, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    .line 1141
    sget-object p1, Lo/wv;->c:Lo/wv$Application;

    invoke-virtual {p1}, Lo/wv$Application;->d()Lo/wv;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-interface {p1, v0}, Lo/wv;->d(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)V

    .line 1144
    :cond_12
    iget-object p1, p0, Lo/ws;->s:Lo/xa;

    if-eqz p1, :cond_13

    .line 1145
    const-class p1, Lo/E;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/E;

    if-eqz p1, :cond_13

    .line 1147
    iget-object v0, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v1, p0, Lo/ws;->s:Lo/xa;

    invoke-virtual {v1}, Lo/xa;->f()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/E;->c(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1151
    :cond_13
    invoke-virtual {p0}, Lo/ws;->c()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lo/ws;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e(F)V
    .locals 5

    .line 619
    iget v0, p0, Lo/ws;->Y:I

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 620
    iput p1, p0, Lo/ws;->Y:I

    .line 621
    new-instance p1, Lo/wS;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p1, v1, v2, v3, v4}, Lo/wS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lo/ws;->Y:I

    .line 622
    invoke-virtual {p1, v0, v1}, Lo/wS;->e(II)Lo/wS;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->x:Lo/ty;

    .line 623
    invoke-virtual {v0}, Lo/ty;->e()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/wS;->c(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lo/wS;

    move-result-object p1

    iget-object v0, p0, Lo/ws;->I:Lo/wY;

    .line 624
    invoke-virtual {v0}, Lo/wY;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/wS;->a(J)Lo/wS;

    move-result-object p1

    .line 625
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v0

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lo/wS;->e(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wS;

    move-result-object p1

    .line 626
    invoke-direct {p0}, Lo/ws;->n()J

    move-result-wide v0

    iget-object v2, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-virtual {p1, v0, v1, v2}, Lo/wS;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)Lo/wo;

    move-result-object p1

    .line 627
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    return-void
.end method

.method public e(J)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1003
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_playreport"

    const-string v2, "setTrackingId(%s)"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1004
    iget-object v0, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v0, p1, p2}, Lo/wP;->d(J)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/ExitPipAction;J)V
    .locals 3

    .line 979
    new-instance p2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;

    iget-object p3, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v0, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v1, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lo/ws;->I:Lo/wY;

    .line 980
    invoke-virtual {p3}, Lo/wY;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;->e(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;

    move-result-object p2

    .line 981
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v0

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p3

    invoke-virtual {p2, v0, v1, p3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;->b(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;

    move-result-object p2

    .line 982
    sget-object p3, Lo/ws$1;->c:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 987
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;->ENDSESSION:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;->e(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;

    goto :goto_0

    .line 984
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;->CONTINUEPLAY:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;->e(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;

    .line 990
    :goto_0
    invoke-virtual {p0, p2}, Lo/ws;->e(Lo/wo;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lo/ws;->o:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 539
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const-string v1, "nf_playreport"

    const-string v2, "onTransitionPerformed(%s, %s, %s)"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 540
    invoke-direct {p0}, Lo/ws;->f()V

    .line 541
    iget-object v0, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->i()V

    .line 542
    iget-object v0, p0, Lo/ws;->O:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p1, p2, p3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->a(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p1

    .line 545
    invoke-virtual {p1, p4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    .line 547
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;

    if-eq p4, p1, :cond_1

    .line 548
    iget-object p1, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->i()V

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;Z)V
    .locals 5

    const-string v0, "nf_playreport"

    const-string v1, "onPlaybackFallback..."

    .line 1351
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    new-instance v0, Lo/wy;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/wy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    iget-wide v1, p0, Lo/ws;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/wy;->a(Ljava/lang/Long;)Lo/wy;

    move-result-object v1

    .line 1354
    invoke-virtual {v1, p1}, Lo/wy;->e(Ljava/lang/String;)Lo/wy;

    move-result-object p1

    .line 1355
    invoke-virtual {p1, p2}, Lo/wy;->a(Ljava/lang/String;)Lo/wy;

    move-result-object p1

    .line 1356
    invoke-virtual {p1, p3}, Lo/wy;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;)Lo/wy;

    move-result-object p1

    .line 1357
    invoke-virtual {p1, p4}, Lo/wy;->e(Z)Lo/wy;

    .line 1359
    invoke-virtual {p0, v0}, Lo/ws;->e(Lo/wo;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lo/xJ;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 528
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "nf_playreport"

    const-string v2, "onTransitionRequested(%s, %s, %s prefetched branches)"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 529
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->b(Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object v0

    if-eqz p3, :cond_0

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;

    .line 531
    :goto_0
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p3

    .line 532
    invoke-virtual {p3, p4, p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->e(Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p3

    .line 533
    invoke-virtual {p3, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p1

    .line 534
    iget-object p3, p0, Lo/ws;->O:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Lo/tH$Fragment;)V
    .locals 3

    .line 407
    new-instance v0, Lo/wK;

    invoke-direct {v0}, Lo/wK;-><init>()V

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 408
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/wK;->c(J)Lo/wK;

    move-result-object v0

    .line 409
    invoke-virtual {v0, p1}, Lo/wK;->c(Lo/tH$Fragment;)Lo/wK;

    move-result-object v0

    .line 410
    iget-boolean p1, p1, Lo/tH$Fragment;->a:Z

    if-eqz p1, :cond_0

    .line 411
    iget-object p1, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->e(Lo/wK;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lo/ws;->G:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Lo/wK;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 416
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nf_playreport"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Lo/tH$StateListAnimator;J)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "nf_playreport"

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-eqz v6, :cond_0

    .line 257
    iget-wide v4, p0, Lo/ws;->q:J

    cmp-long v6, p2, v4

    if-eqz v6, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 258
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "Skip onCDNSwitch because event is a playlist prefetch. Current reporting viewableId = (%s), reported  = (%s)"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 261
    :cond_0
    iget p2, p1, Lo/tH$StateListAnimator;->j:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const-string p1, "Skip onCDNSwitch because reading from local file"

    .line 262
    invoke-static {v2, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p3, "onCDNSwitch(%s)"

    .line 265
    invoke-static {v2, p3, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    iget-object p2, p0, Lo/ws;->P:Landroid/util/SparseArray;

    iget p3, p1, Lo/tH$StateListAnimator;->s:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    iget p2, p1, Lo/tH$StateListAnimator;->s:I

    if-ne p2, v1, :cond_2

    .line 268
    iget-object p2, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {p2, p1}, Lo/wP;->a(Lo/tH$StateListAnimator;)Lo/wP;

    .line 271
    :cond_2
    new-instance p2, Lo/wl;

    iget-object p3, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v0, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {p2, p3, v0, v2, v4}, Lo/wl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lo/ws;->I:Lo/wY;

    .line 272
    invoke-virtual {p3}, Lo/wY;->b()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lo/wl;->a(J)Lo/wl;

    move-result-object p2

    iget-object p3, p0, Lo/ws;->P:Landroid/util/SparseArray;

    iget v0, p1, Lo/tH$StateListAnimator;->s:I

    .line 273
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/tH$StateListAnimator;

    invoke-virtual {p2, p3}, Lo/wl;->d(Lo/tH$StateListAnimator;)Lo/wl;

    move-result-object p2

    .line 274
    invoke-virtual {p2, p1}, Lo/wl;->a(Lo/tH$StateListAnimator;)Lo/wl;

    move-result-object p2

    .line 275
    invoke-virtual {p0, p2}, Lo/ws;->e(Lo/wo;)V

    .line 276
    iget-object p2, p0, Lo/ws;->P:Landroid/util/SparseArray;

    iget p3, p1, Lo/tH$StateListAnimator;->s:I

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    iget-object p2, p0, Lo/ws;->s:Lo/xa;

    iget p1, p1, Lo/tH$StateListAnimator;->j:I

    invoke-virtual {p2, p1}, Lo/xa;->b(I)V

    .line 278
    iget-boolean p1, p0, Lo/ws;->ac:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/ws;->P:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "initialVideoCDNSelectionDone"

    .line 280
    invoke-virtual {p0, p1}, Lo/ws;->d(Ljava/lang/String;)V

    .line 281
    iput-boolean v3, p0, Lo/ws;->ac:Z

    .line 283
    :cond_3
    iget-boolean p1, p0, Lo/ws;->ab:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lo/ws;->P:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p1, "initialAudioCDNSelectionDone"

    .line 285
    invoke-virtual {p0, p1}, Lo/ws;->d(Ljava/lang/String;)V

    .line 286
    iput-boolean v3, p0, Lo/ws;->ab:Z

    :cond_4
    return-void
.end method

.method public e(Lo/uF;JLo/uF;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const-string v1, "nf_playreport"

    const-string v2, "onSegmentTransitionStart(%s, %s)"

    .line 554
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 555
    invoke-direct {p0}, Lo/ws;->f()V

    .line 556
    iget-object v0, p0, Lo/ws;->O:Ljava/util/Map;

    iget-object v2, p4, Lo/uF;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    if-nez v0, :cond_0

    const-string v0, "detected transition without transition event - creating one ad-hoc"

    .line 558
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;

    .line 560
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lo/ws;->O:Ljava/util/Map;

    iget-object v2, p4, Lo/uF;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->a()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    .line 566
    :goto_0
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->b(Lo/uF;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p1

    .line 567
    invoke-virtual {p1, p4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->c(Lo/uF;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p1

    iget-object p4, p0, Lo/ws;->I:Lo/wY;

    .line 568
    invoke-virtual {p4}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->e(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p1

    .line 569
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v1

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p4

    invoke-virtual {p1, v1, v2, p4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->d(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p1

    .line 570
    invoke-virtual {p1, p2, p3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->d(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p1

    .line 571
    invoke-direct {p0}, Lo/ws;->n()J

    move-result-wide v1

    iget-object p4, p0, Lo/ws;->w:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-virtual {p1, v1, v2, p4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->e(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    move-result-object p1

    .line 572
    invoke-direct {p0}, Lo/ws;->x()Z

    move-result p4

    invoke-virtual {p1, p4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->c(Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    .line 575
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->c()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    .line 576
    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;->a(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;

    :cond_1
    return-void
.end method

.method e(Lo/wo;)V
    .locals 1

    .line 1335
    iget-object v0, p0, Lo/ws;->f:Lo/wx;

    invoke-interface {v0, p1}, Lo/wx;->a(Lo/wo;)V

    return-void
.end method

.method public e(ZZLjava/lang/String;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 631
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "nf_playreport"

    const-string v2, "onManifestUpdatedOnNetworkChange(%s, %s, %s)"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 632
    new-instance v0, Lo/wr;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/wr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 633
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/wr;->e(J)Lo/wr;

    move-result-object v0

    .line 634
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v1

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/wr;->d(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wr;

    move-result-object v0

    .line 635
    invoke-virtual {v0, p1}, Lo/wr;->a(Z)Lo/wr;

    move-result-object p1

    .line 636
    invoke-virtual {p1, p2}, Lo/wr;->b(Z)Lo/wr;

    move-result-object p1

    .line 637
    invoke-virtual {p1, p3}, Lo/wr;->a(Ljava/lang/String;)Lo/wr;

    move-result-object p1

    .line 638
    invoke-virtual {p0, p1}, Lo/ws;->e(Lo/wo;)V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1348
    iget-boolean v0, p0, Lo/ws;->Z:Z

    return v0
.end method

.method public h()V
    .locals 6

    const-string v0, "nf_playreport"

    const-string v1, "updateNetworkInterfaceParams()"

    .line 1020
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lo/ws;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;->e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    move-result-object v0

    .line 1022
    iget-object v1, p0, Lo/ws;->N:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    if-nez v1, :cond_0

    .line 1023
    iget-object v1, p0, Lo/ws;->E:Lo/wP;

    invoke-virtual {v1, v0}, Lo/wP;->d(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;)V

    .line 1025
    :cond_0
    iget-object v1, p0, Lo/ws;->N:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1027
    new-instance v1, Lo/ww;

    iget-object v2, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v5, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lo/ww;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v1, v0}, Lo/ww;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;)Lo/ww;

    move-result-object v1

    .line 1029
    invoke-virtual {p0, v1}, Lo/ws;->e(Lo/wo;)V

    .line 1030
    iput-object v0, p0, Lo/ws;->N:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    .line 1031
    iget-object v1, p0, Lo/ws;->s:Lo/xa;

    invoke-virtual {v1, v0}, Lo/xa;->e(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;)V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 5

    .line 949
    new-instance v0, Lo/wt;

    iget-object v1, p0, Lo/ws;->g:Ljava/lang/String;

    iget-object v2, p0, Lo/ws;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ws;->h:Ljava/lang/String;

    iget-object v4, p0, Lo/ws;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/wt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/ws;->N:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;

    .line 950
    invoke-virtual {v0, v1}, Lo/wt;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    .line 951
    invoke-direct {p0}, Lo/ws;->p()J

    move-result-wide v1

    invoke-direct {p0}, Lo/ws;->r()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->I:Lo/wY;

    .line 952
    invoke-virtual {v1}, Lo/wY;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    iget-wide v1, p0, Lo/ws;->q:J

    .line 953
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Ljava/lang/Long;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->U:Lo/xD;

    iget-object v2, p0, Lo/ws;->p:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;

    .line 954
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine;->c()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/PlayerStateMachine$State;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->b(Lo/xD;Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    const/4 v1, 0x1

    .line 955
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->b(Z)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->x:Lo/ty;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 956
    :cond_0
    invoke-virtual {v1}, Lo/ty;->e()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->x:Lo/ty;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 957
    :cond_1
    invoke-virtual {v1}, Lo/ty;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->x:Lo/ty;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    .line 958
    :cond_2
    invoke-virtual {v1}, Lo/ty;->c()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->x:Lo/ty;

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    .line 959
    :cond_3
    invoke-virtual {v1}, Lo/ty;->b()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->x:Lo/ty;

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_4

    .line 960
    :cond_4
    invoke-virtual {v1}, Lo/ty;->i()Ljava/util/Map;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d(Ljava/util/Map;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    iget-object v1, p0, Lo/ws;->x:Lo/ty;

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_5

    .line 961
    :cond_5
    invoke-virtual {v1}, Lo/ty;->g()Ljava/util/Map;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->e(Ljava/util/Map;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    .line 962
    invoke-direct {p0}, Lo/ws;->v()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c(J)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    move-result-object v0

    .line 963
    invoke-static {}, Lo/ek;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 964
    move-object v1, v0

    check-cast v1, Lo/wt;

    iget-object v3, p0, Lo/ws;->x:Lo/ty;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Lo/ty;->h()Ljava/util/Map;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Lo/wt;->c(Ljava/util/Map;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    .line 966
    :cond_7
    invoke-virtual {p0, v0}, Lo/ws;->e(Lo/wo;)V

    return-void
.end method
