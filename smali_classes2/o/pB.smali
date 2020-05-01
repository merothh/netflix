.class public Lo/pB;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/pz;


# static fields
.field public static final b:Lo/StackView;

.field public static final e:Z


# instance fields
.field private final a:Lo/pG;

.field private final c:Lo/pM;

.field private final d:Lo/pv;

.field private f:Landroid/os/HandlerThread;

.field private final g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private h:Lo/ps;

.field private i:Landroid/os/HandlerThread;

.field private j:Lo/tg;

.field private k:Lo/xo;

.field private l:Lo/sz;

.field private final m:Landroid/content/BroadcastReceiver;

.field private n:Lo/rk;

.field private o:Lo/py;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lo/ee;->g()Z

    move-result v0

    sput-boolean v0, Lo/pB;->e:Z

    .line 60
    new-instance v0, Lo/StackView;

    const-string v1, "aom"

    const-string v2, "aomJNI"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/StackView;-><init>([Ljava/lang/String;)V

    sput-object v0, Lo/pB;->b:Lo/StackView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/pM;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/H;)V
    .locals 8

    .line 64
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;-><init>()V

    iput-object v0, p0, Lo/pB;->g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 228
    new-instance v0, Lo/pB$1;

    invoke-direct {v0, p0}, Lo/pB$1;-><init>(Lo/pB;)V

    iput-object v0, p0, Lo/pB;->m:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p2, p0, Lo/pB;->c:Lo/pM;

    .line 66
    new-instance v0, Lo/pG;

    iget-object v1, p0, Lo/pB;->g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-direct {v0, p1, v1, p5}, Lo/pG;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/H;)V

    iput-object v0, p0, Lo/pB;->a:Lo/pG;

    .line 70
    new-instance p5, Lo/pv;

    move-object v2, p5

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lo/pv;-><init>(Landroid/content/Context;Lo/pB;Lo/pM;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object p5, p0, Lo/pB;->d:Lo/pv;

    .line 72
    const-class p1, Lo/StackView;

    sget-object p2, Lo/pB;->b:Lo/StackView;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lo/TextViewMetrics;->d(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 74
    sget-object p1, Lo/wv;->c:Lo/wv$Application;

    sget-object p1, Lo/pr;->d:Lo/pr;

    sput-object p1, Lo/wv$Application;->c:Lo/wv;

    return-void
.end method

.method static synthetic d(Lo/pB;)Lo/tg;
    .locals 0

    .line 44
    iget-object p0, p0, Lo/pB;->j:Lo/tg;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 200
    iget-object v0, p0, Lo/pB;->j:Lo/tg;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lo/tg;->g()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "player"

    return-object v0
.end method

.method public b()Lo/zY;
    .locals 2

    .line 208
    invoke-static {}, Lo/aeB;->a()Z

    .line 209
    iget-object v0, p0, Lo/pB;->o:Lo/py;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lo/py;

    invoke-virtual {p0}, Lo/pB;->getOfflineAgentPlaybackInterface()Lo/pq;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/py;-><init>(Lo/pq;)V

    iput-object v0, p0, Lo/pB;->o:Lo/py;

    .line 212
    :cond_0
    iget-object v0, p0, Lo/pB;->o:Lo/py;

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lo/pB;->j:Lo/tg;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Lo/tg;->b(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/netflix/mediaclient/servicemgr/PrepareManager;
    .locals 1

    .line 222
    iget-object v0, p0, Lo/pB;->a:Lo/pG;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 148
    invoke-super {p0}, Lo/bV;->destroy()V

    .line 152
    invoke-virtual {p0}, Lo/pB;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/pB;->m:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 153
    iget-object v0, p0, Lo/pB;->d:Lo/pv;

    invoke-virtual {v0}, Lo/pv;->a()V

    .line 154
    iget-object v0, p0, Lo/pB;->h:Lo/ps;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Lo/ps;->d()V

    .line 157
    :cond_0
    iget-object v0, p0, Lo/pB;->a:Lo/pG;

    invoke-virtual {v0}, Lo/pG;->d()V

    .line 158
    iget-object v0, p0, Lo/pB;->f:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 160
    iput-object v1, p0, Lo/pB;->f:Landroid/os/HandlerThread;

    .line 162
    :cond_1
    iget-object v0, p0, Lo/pB;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 164
    iput-object v1, p0, Lo/pB;->i:Landroid/os/HandlerThread;

    .line 166
    :cond_2
    iget-object v0, p0, Lo/pB;->j:Lo/tg;

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Lo/tg;->i()V

    .line 168
    iput-object v1, p0, Lo/pB;->j:Lo/tg;

    .line 170
    :cond_3
    iget-object v0, p0, Lo/pB;->l:Lo/sz;

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {v0}, Lo/sz;->c()V

    .line 172
    iput-object v1, p0, Lo/pB;->l:Lo/sz;

    .line 174
    :cond_4
    iget-object v0, p0, Lo/pB;->n:Lo/rk;

    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {v0}, Lo/rk;->a()V

    .line 176
    iput-object v1, p0, Lo/pB;->n:Lo/rk;

    :cond_5
    return-void
.end method

.method protected doInit()V
    .locals 11

    .line 98
    invoke-virtual {p0}, Lo/pB;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    .line 106
    new-instance v1, Lo/tg;

    invoke-virtual {p0}, Lo/pB;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lo/adU;->d(Lo/cz;)Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lo/tg;-><init>(Landroid/content/Context;Lo/cz;Z)V

    iput-object v1, p0, Lo/pB;->j:Lo/tg;

    .line 108
    invoke-virtual {p0}, Lo/pB;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/pB;->m:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lo/yn;->d()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/adG;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, -0x1

    const-string v2, "PlaybackWorkerThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/pB;->f:Landroid/os/HandlerThread;

    .line 111
    iget-object v0, p0, Lo/pB;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    invoke-virtual {p0}, Lo/pB;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ua;->a(Landroid/content/Context;)V

    .line 115
    sget-boolean v0, Lo/pB;->e:Z

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DrmManagerkWorkerThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/pB;->i:Landroid/os/HandlerThread;

    .line 117
    iget-object v0, p0, Lo/pB;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    iget-object v0, p0, Lo/pB;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lo/pB;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 123
    new-instance v0, Lo/sz;

    invoke-virtual {p0}, Lo/pB;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lo/pB;->f:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lo/pB;->c:Lo/pM;

    .line 124
    invoke-virtual {p0}, Lo/pB;->getConfigurationAgent()Lo/cz;

    move-result-object v5

    invoke-interface {v5}, Lo/cz;->g()Z

    move-result v5

    invoke-direct {v0, v1, v3, v4, v5}, Lo/sz;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/pM;Z)V

    iput-object v0, p0, Lo/pB;->l:Lo/sz;

    .line 128
    new-instance v0, Lo/rk;

    iget-object v3, p0, Lo/pB;->l:Lo/sz;

    iget-object v4, p0, Lo/pB;->c:Lo/pM;

    invoke-virtual {p0}, Lo/pB;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Lo/cz;->U()Z

    move-result v5

    invoke-virtual {p0}, Lo/pB;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->d()Lo/iU;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/rk;-><init>(Landroid/os/Looper;Lo/sD;Lo/pM;ZLo/iU;)V

    iput-object v0, p0, Lo/pB;->n:Lo/rk;

    .line 131
    iget-object v0, p0, Lo/pB;->l:Lo/sz;

    iget-object v1, p0, Lo/pB;->n:Lo/rk;

    invoke-virtual {v0, v1}, Lo/sz;->c(Lo/rh;)V

    .line 133
    iget-object v0, p0, Lo/pB;->a:Lo/pG;

    iget-object v1, p0, Lo/pB;->j:Lo/tg;

    iget-object v2, p0, Lo/pB;->l:Lo/sz;

    iget-object v3, p0, Lo/pB;->n:Lo/rk;

    invoke-virtual {v0, v1, v2, v3}, Lo/pG;->a(Lo/tg;Lo/sz;Lo/rk;)V

    .line 134
    new-instance v0, Lo/pp;

    invoke-virtual {p0}, Lo/pB;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/pB;->l:Lo/sz;

    invoke-virtual {p0}, Lo/pB;->getOfflineAgent()Lo/nS;

    move-result-object v3

    invoke-virtual {p0}, Lo/pB;->getOfflineAgentPlaybackInterface()Lo/pq;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/pp;-><init>(Landroid/content/Context;Lo/sz;Lo/nS;Lo/pq;)V

    iput-object v0, p0, Lo/pB;->k:Lo/xo;

    .line 137
    new-instance v0, Lo/xh;

    invoke-virtual {p0}, Lo/pB;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lo/pB;->g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget-object v8, p0, Lo/pB;->j:Lo/tg;

    iget-object v9, p0, Lo/pB;->a:Lo/pG;

    iget-object v10, p0, Lo/pB;->k:Lo/xo;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lo/xh;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/tg;Lo/pG;Lo/xo;)V

    iput-object v0, p0, Lo/pB;->h:Lo/ps;

    .line 140
    iget-object v0, p0, Lo/pB;->d:Lo/pv;

    iget-object v1, p0, Lo/pB;->h:Lo/ps;

    invoke-virtual {p0}, Lo/pB;->getOfflineAgentPlaybackInterface()Lo/pq;

    move-result-object v2

    iget-object v3, p0, Lo/pB;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1, v2, v3}, Lo/pv;->d(Lo/ps;Lo/pq;Landroid/os/HandlerThread;)V

    .line 142
    invoke-static {}, Lo/pn;->e()Lo/pn;

    .line 143
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/pB;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e()Lo/Ah;
    .locals 1

    .line 217
    iget-object v0, p0, Lo/pB;->d:Lo/pv;

    return-object v0
.end method

.method public handleConnectivityChange()V
    .locals 1

    .line 181
    iget-object v0, p0, Lo/pB;->d:Lo/pv;

    invoke-virtual {v0}, Lo/pv;->d()V

    .line 183
    iget-object v0, p0, Lo/pB;->l:Lo/sz;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lo/sz;->d()V

    .line 186
    :cond_0
    iget-object v0, p0, Lo/pB;->n:Lo/rk;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lo/rk;->e()V

    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lo/pB;->n:Lo/rk;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lo/rk;->c()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 83
    iget-object v0, p0, Lo/pB;->l:Lo/sz;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lo/sz;->b()V

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/pB;->d:Lo/pv;

    invoke-virtual {v0, p1}, Lo/pv;->a(I)V

    return-void
.end method
