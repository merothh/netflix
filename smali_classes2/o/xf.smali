.class public abstract Lo/xf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zJ;


# instance fields
.field protected final A:Lo/ta;

.field protected B:Ljava/lang/String;

.field C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

.field protected D:Z

.field private E:Landroid/os/Handler;

.field private F:Lo/pC;

.field private final G:Lo/sV;

.field private H:Ljava/lang/String;

.field private final I:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private J:Z

.field private final K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

.field protected final a:Lo/xo;

.field protected final b:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

.field protected c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field protected d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

.field protected final e:Lo/tZ;

.field protected final f:Lo/tX;

.field protected final g:Landroid/os/Handler;

.field protected final h:Lo/tL;

.field protected final i:Lo/tG;

.field protected final j:Lo/uh;

.field protected final k:Lo/xw;

.field protected final l:Lo/xv;

.field protected final m:Lo/xz;

.field protected final n:Lo/tf;

.field protected final o:Lo/xc;

.field protected p:Lo/qF;

.field protected final q:Lo/xi;

.field protected final r:Lo/rD;

.field protected final s:Landroid/content/Context;

.field protected t:Ljava/lang/String;

.field protected final u:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/netflix/mediaclient/media/AudioSource;",
            ">;"
        }
    .end annotation
.end field

.field protected final v:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field protected final w:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/netflix/mediaclient/media/Language;",
            ">;"
        }
    .end annotation
.end field

.field protected x:Lo/cz;

.field protected y:Lo/rA;

.field protected z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tK;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/sV;ZLjava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;Lo/xo;Lo/wx;Lo/rD;Lo/vY;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v7, p19

    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GenericPlaybackSession"

    .line 104
    iput-object v0, v8, Lo/xf;->H:Ljava/lang/String;

    const/4 v0, 0x0

    .line 105
    iput-object v0, v8, Lo/xf;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 109
    iput-object v0, v8, Lo/xf;->b:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

    .line 137
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, v8, Lo/xf;->u:Landroid/util/LongSparseArray;

    .line 138
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, v8, Lo/xf;->v:Landroid/util/LongSparseArray;

    .line 139
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, v8, Lo/xf;->w:Landroid/util/LongSparseArray;

    .line 695
    new-instance v0, Lo/xf$3;

    invoke-direct {v0, v8}, Lo/xf$3;-><init>(Lo/xf;)V

    iput-object v0, v8, Lo/xf;->A:Lo/ta;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lo/xf;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lo/xf;->H:Ljava/lang/String;

    .line 171
    iput-object v15, v8, Lo/xf;->s:Landroid/content/Context;

    .line 172
    iput-object v6, v8, Lo/xf;->E:Landroid/os/Handler;

    move-object/from16 v10, p9

    .line 173
    iput-object v10, v8, Lo/xf;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-object/from16 v0, p12

    .line 174
    iput-object v0, v8, Lo/xf;->G:Lo/sV;

    move-object/from16 v0, p2

    .line 175
    iput-object v0, v8, Lo/xf;->I:Lcom/netflix/mediaclient/service/user/UserAgent;

    move-object/from16 v12, p3

    .line 176
    iput-object v12, v8, Lo/xf;->x:Lo/cz;

    .line 177
    invoke-static {}, Lo/adZ;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lo/xf;->t:Ljava/lang/String;

    .line 178
    new-instance v0, Lo/tZ;

    invoke-direct {v0}, Lo/tZ;-><init>()V

    iput-object v0, v8, Lo/xf;->e:Lo/tZ;

    .line 179
    new-instance v0, Lo/tL;

    invoke-direct {v0}, Lo/tL;-><init>()V

    iput-object v0, v8, Lo/xf;->h:Lo/tL;

    .line 180
    sget-object v0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->d:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    const-string v1, "Default"

    move-object/from16 v14, p10

    invoke-interface {v14, v0, v1}, Lo/tK;->d(Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/String;)Lo/vh;

    .line 181
    new-instance v0, Lo/tX;

    iget-object v1, v8, Lo/xf;->e:Lo/tZ;

    invoke-direct {v0, v15, v7, v1}, Lo/tX;-><init>(Landroid/content/Context;Lo/vY;Lo/tZ;)V

    iput-object v0, v8, Lo/xf;->f:Lo/tX;

    .line 183
    new-instance v11, Lo/uh;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v8, Lo/xf;->f:Lo/tX;

    invoke-interface/range {p10 .. p10}, Lo/tK;->b()I

    move-result v0

    const/4 v13, 0x2

    mul-int/lit8 v5, v0, 0x2

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v4, p19

    invoke-direct/range {v0 .. v5}, Lo/uh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/tJ;Lo/vY;I)V

    iput-object v11, v8, Lo/xf;->j:Lo/uh;

    .line 184
    new-instance v0, Lo/ue;

    new-array v1, v13, [Lo/tG;

    new-instance v2, Lo/tY;

    iget-object v3, v8, Lo/xf;->f:Lo/tX;

    move-object/from16 v4, p11

    invoke-direct {v2, v15, v3, v7, v4}, Lo/tY;-><init>(Landroid/content/Context;Lo/tJ;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v8, Lo/xf;->j:Lo/uh;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo/ue;-><init>([Lo/tG;)V

    iput-object v0, v8, Lo/xf;->i:Lo/tG;

    .line 190
    new-instance v0, Lo/tf;

    invoke-direct {v0}, Lo/tf;-><init>()V

    iput-object v0, v8, Lo/xf;->n:Lo/tf;

    .line 191
    new-instance v0, Lo/xz;

    invoke-direct {v0}, Lo/xz;-><init>()V

    iput-object v0, v8, Lo/xf;->m:Lo/xz;

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v8, Lo/xf;->g:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    invoke-direct {v0, v6}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;-><init>(Landroid/os/Handler;)V

    iput-object v0, v8, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    .line 194
    new-instance v11, Lo/xv;

    iget-object v3, v8, Lo/xf;->g:Landroid/os/Handler;

    iget-object v7, v8, Lo/xf;->m:Lo/xz;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v7}, Lo/xv;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/xf;Lo/xz;)V

    iput-object v11, v8, Lo/xf;->l:Lo/xv;

    move/from16 v0, p13

    .line 195
    iput-boolean v0, v8, Lo/xf;->D:Z

    move-object/from16 v0, p14

    .line 196
    iput-object v0, v8, Lo/xf;->B:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 197
    iput-object v1, v8, Lo/xf;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    move-object/from16 v1, p18

    .line 198
    iput-object v1, v8, Lo/xf;->r:Lo/rD;

    .line 199
    new-instance v1, Lo/xw;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, v8, Lo/xf;->b:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

    iget-object v3, v8, Lo/xf;->t:Ljava/lang/String;

    .line 200
    invoke-interface/range {p9 .. p9}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->c()Lo/Aq;

    move-result-object v4

    invoke-virtual {v4}, Lo/Aq;->b()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v8, Lo/xf;->m:Lo/xz;

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v13, p17

    move-object v14, v2

    move-object v2, v15

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v18, p14

    invoke-direct/range {v9 .. v18}, Lo/xw;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/cz;Lo/wx;Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;Ljava/lang/String;Ljava/lang/String;Lo/xz;Ljava/lang/String;)V

    iput-object v1, v8, Lo/xf;->k:Lo/xw;

    .line 201
    iget-object v0, v8, Lo/xf;->k:Lo/xw;

    invoke-interface/range {p8 .. p8}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lo/xw;->d(J)V

    .line 203
    invoke-interface/range {p10 .. p10}, Lo/tK;->c()V

    .line 205
    new-instance v0, Lo/xi;

    iget-object v1, v8, Lo/xf;->m:Lo/xz;

    invoke-virtual/range {p0 .. p0}, Lo/xf;->f()J

    move-result-wide v3

    invoke-direct {v0, v1, v3, v4}, Lo/xi;-><init>(Lo/xz;J)V

    iput-object v0, v8, Lo/xf;->q:Lo/xi;

    .line 206
    new-instance v0, Lo/xc;

    iget-object v1, v8, Lo/xf;->g:Landroid/os/Handler;

    move-object/from16 v3, p4

    invoke-direct {v0, v2, v1, v3}, Lo/xc;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/xZ;)V

    iput-object v0, v8, Lo/xf;->o:Lo/xc;

    .line 207
    iget-object v0, v8, Lo/xf;->b:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

    if-eqz v0, :cond_0

    const-string v1, "Generic"

    .line 208
    iput-object v1, v0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mPlayerName:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p16

    .line 210
    iput-object v0, v8, Lo/xf;->a:Lo/xo;

    return-void
.end method

.method private synthetic B()V
    .locals 5

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lo/xf;->J:Z

    .line 301
    iget-object v0, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {p0}, Lo/xf;->e()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/xw;->a(JJ)V

    return-void
.end method

.method private synthetic D()V
    .locals 3

    .line 247
    iget-object v0, p0, Lo/xf;->l:Lo/xv;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->b(J)V

    .line 248
    iget-object v0, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xw;->e(J)V

    return-void
.end method

.method static synthetic a(Lo/xf;)Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;
    .locals 0

    .line 101
    iget-object p0, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    return-object p0
.end method

.method static synthetic b(Lo/xf;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lo/xf;->H:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic b(Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V
    .locals 7

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lo/xf;->J:Z

    .line 309
    iget-object v1, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    invoke-virtual {p0}, Lo/xf;->e()J

    move-result-wide v5

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lo/xw;->b(JLcom/netflix/mediaclient/servicemgr/ExitPipAction;J)V

    return-void
.end method

.method private static b(Ljava/lang/Object;Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 922
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->USER_OVERRIDE:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Lo/xf;)Landroid/os/Handler;
    .locals 0

    .line 101
    iget-object p0, p0, Lo/xf;->E:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic c()V
    .locals 0

    .line 468
    invoke-virtual {p0}, Lo/xf;->x()V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;Ljava/lang/String;)V
    .locals 8

    .line 615
    iget-object v0, p0, Lo/xf;->r:Lo/rD;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/rD;->a()Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->h:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    :goto_0
    move-object v5, v0

    .line 617
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    if-ne p3, v0, :cond_1

    .line 619
    iget-object p2, p0, Lo/xf;->H:Ljava/lang/String;

    const-string p3, "handleImmediateRecovery:: Playback recovery is not possible..."

    invoke-static {p2, p3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v1, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    const/4 v6, 0x0

    move-object v4, p4

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lo/xw;->e(JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;ZLjava/lang/String;)V

    goto :goto_1

    .line 622
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    if-ne p3, v0, :cond_2

    .line 624
    iget-object p3, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v0, "handleImmediateRecovery:: Fallback is available..."

    invoke-static {p3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v1, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v4, p4

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lo/xw;->e(JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;ZLjava/lang/String;)V

    .line 626
    new-instance p3, Lo/rB;

    invoke-direct {p3, p1, p2}, Lo/rB;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    invoke-virtual {p0, p3}, Lo/xf;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    goto :goto_1

    .line 628
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    if-ne p3, p1, :cond_3

    .line 629
    iget-object p1, p0, Lo/xf;->H:Ljava/lang/String;

    const-string p2, "handleImmediateRecovery:: Fallback is pending, do nothing..."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 631
    :cond_3
    iget-object p1, p0, Lo/xf;->H:Ljava/lang/String;

    const-string p2, "handleImmediateRecovery:: Not expected, reporting original error."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    .line 633
    iput-object p1, p0, Lo/xf;->y:Lo/rA;

    return-void
.end method

.method private c(Lo/uC;)V
    .locals 4

    .line 885
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->j()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-nez v0, :cond_0

    .line 887
    iget-object p1, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v0, "Logging agent not available"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 891
    :cond_0
    invoke-virtual {p1}, Lo/uC;->g()Lcom/netflix/mediaclient/media/LanguageChoice;

    move-result-object p1

    .line 893
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSelectionReport()Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    move-result-object v1

    if-nez v1, :cond_1

    .line 894
    iget-object p1, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v0, "Select report is null, nothing to report!"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 898
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSelectionReport()Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->getSelectedLanguage()Lo/afA$Activity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 899
    iget-object p1, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v0, "Select language is null, no user override, nothing to report!"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 904
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    .line 905
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSelectionReport()Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->getAudioLanguageSelectionOrigin()Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    move-result-object v2

    .line 903
    invoke-static {v1, v2}, Lo/xf;->b(Ljava/lang/Object;Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 907
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    .line 908
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSelectionReport()Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->getSubtitleLanguageSelectionOrigin()Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    move-result-object v2

    .line 906
    invoke-static {v1, v2}, Lo/xf;->b(Ljava/lang/Object;Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 917
    :cond_3
    iget-object p1, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v0, "No mismatches, nothing to report"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 911
    :cond_4
    :goto_0
    iget-object v1, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v2, "We were not able to honor user language override, report!"

    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    new-instance v1, Lo/jI;

    .line 914
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSelectionReport()Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    move-result-object p1

    .line 915
    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lo/jI;-><init>(Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;Ljava/lang/Long;Ljava/lang/String;)V

    .line 913
    invoke-interface {v0, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lo/xf;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/xf;->d(J)V

    return-void
.end method

.method static synthetic d(Lo/xf;)Lo/pC;
    .locals 0

    .line 101
    iget-object p0, p0, Lo/xf;->F:Lo/pC;

    return-object p0
.end method

.method static synthetic d(Lo/xf;Lo/pC;)Lo/pC;
    .locals 0

    .line 101
    iput-object p1, p0, Lo/xf;->F:Lo/pC;

    return-object p1
.end method

.method private synthetic d(J)V
    .locals 9

    .line 265
    iget-object v0, p0, Lo/xf;->l:Lo/xv;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->a(J)V

    .line 266
    iget-object v3, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v4

    sget-object v6, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lo/xw;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;J)V

    return-void
.end method

.method private synthetic d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1, p2, p4, p3}, Lo/xf;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lo/xf;Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/xf;->b(Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V

    return-void
.end method

.method static synthetic d(Lo/xf;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/xf;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V

    return-void
.end method

.method static synthetic e(Lo/xf;)Lo/sV;
    .locals 0

    .line 101
    iget-object p0, p0, Lo/xf;->G:Lo/sV;

    return-object p0
.end method

.method private e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;Ljava/lang/String;)V
    .locals 8

    .line 597
    iget-object v0, p0, Lo/xf;->r:Lo/rD;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/rD;->a()Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->h:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    :goto_0
    move-object v5, v0

    .line 599
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    if-ne p3, v0, :cond_1

    .line 600
    iget-object p3, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v0, "handlePendingRecovery:: Playback recovery is not possible, buble error up to UI!"

    invoke-static {p3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    const/4 v6, 0x0

    move-object v4, p4

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lo/xw;->e(JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;ZLjava/lang/String;)V

    .line 602
    invoke-virtual {p0, p2}, Lo/xf;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    goto :goto_1

    .line 603
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    if-ne p3, v0, :cond_2

    .line 604
    iget-object p3, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v0, "handlePendingRecovery:: Fallback is available..."

    invoke-static {p3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v4, p4

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lo/xw;->e(JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;ZLjava/lang/String;)V

    .line 606
    new-instance p3, Lo/rB;

    invoke-direct {p3, p1, p2}, Lo/rB;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    invoke-virtual {p0, p3}, Lo/xf;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    goto :goto_1

    .line 608
    :cond_2
    iget-object p1, p0, Lo/xf;->H:Ljava/lang/String;

    const-string p3, "handlePendingRecovery:: Not expected, report original error."

    invoke-static {p1, p3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0, p2}, Lo/xf;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    :goto_1
    const/4 p1, 0x0

    .line 611
    iput-object p1, p0, Lo/xf;->y:Lo/rA;

    return-void
.end method

.method private e(Lo/xD;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 534
    invoke-virtual {p1}, Lo/xD;->h()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    instance-of v0, v0, Lo/qo;

    if-eqz v0, :cond_4

    .line 535
    invoke-virtual {p1}, Lo/xD;->h()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    check-cast v0, Lo/qo;

    .line 536
    invoke-interface {v0}, Lo/qo;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v0, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    new-instance v1, Lo/sY;

    .line 538
    invoke-virtual {p1}, Lo/xD;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/xD;->d()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-virtual {p1}, Lo/xD;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lo/sY;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 537
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    return-void

    .line 542
    :cond_0
    invoke-interface {v0}, Lo/qo;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 543
    new-instance v1, Lo/sN;

    .line 544
    invoke-virtual {p1}, Lo/xD;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/xD;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lo/xD;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lo/sN;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 545
    invoke-virtual {v1}, Lo/sN;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 546
    iget-object p1, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    return-void

    .line 549
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "uma unavailable for account hold, falling back to blade runner error response based dialog"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 553
    :cond_2
    invoke-interface {v0}, Lo/qo;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 554
    iget-object v0, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    new-instance v1, Lo/sS;

    invoke-direct {v1, p1}, Lo/sS;-><init>(Lo/xD;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    return-void

    .line 557
    :cond_3
    invoke-interface {v0}, Lo/qo;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 558
    iget-object v0, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v1, "reportPlayerError GenericPlaybackSession isAccountInactiveError"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    new-instance v1, Lo/sR;

    invoke-direct {v1, p1}, Lo/sR;-><init>(Lo/xD;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    return-void

    .line 564
    :cond_4
    iget-object v0, p0, Lo/xf;->s:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lo/xD;->a(Landroid/content/Context;)V

    .line 566
    :cond_5
    iget-object v0, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    new-instance v1, Lo/sZ;

    invoke-direct {v1, p1}, Lo/sZ;-><init>(Lo/xD;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    return-void
.end method

.method static synthetic e(Lo/xf;Lo/uC;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lo/xf;->c(Lo/uC;)V

    return-void
.end method

.method static synthetic f(Lo/xf;)V
    .locals 0

    invoke-direct {p0}, Lo/xf;->D()V

    return-void
.end method

.method static synthetic g(Lo/xf;)V
    .locals 0

    invoke-direct {p0}, Lo/xf;->z()V

    return-void
.end method

.method static synthetic i(Lo/xf;)V
    .locals 0

    invoke-direct {p0}, Lo/xf;->B()V

    return-void
.end method

.method static synthetic j(Lo/xf;)V
    .locals 0

    invoke-direct {p0}, Lo/xf;->c()V

    return-void
.end method

.method private synthetic z()V
    .locals 3

    .line 235
    iget-object v0, p0, Lo/xf;->l:Lo/xv;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->a(J)V

    return-void
.end method


# virtual methods
.method public C()I
    .locals 1

    .line 658
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0}, Lo/qF;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 483
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    invoke-virtual {v0, p1}, Lo/qF;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V
    .locals 1

    .line 307
    new-instance v0, Lo/xm;

    invoke-direct {v0, p0, p1}, Lo/xm;-><init>(Lo/xf;Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V

    invoke-virtual {p0, v0}, Lo/xf;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lo/xf;->l:Lo/xv;

    invoke-virtual {v0, p1}, Lo/xv;->c(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 219
    iget-object v0, p0, Lo/xf;->k:Lo/xw;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lo/xw;->d(J)V

    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lo/xf;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lo/Af;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->c(Lo/Af;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 289
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    invoke-virtual {v0, p1}, Lo/qF;->a(Z)V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 488
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    invoke-virtual {v0, p1}, Lo/qF;->b(F)V

    return-void
.end method

.method protected b(J)V
    .locals 1

    .line 264
    new-instance v0, Lo/xk;

    invoke-direct {v0, p0, p1, p2}, Lo/xk;-><init>(Lo/xf;J)V

    invoke-virtual {p0, v0}, Lo/xf;->a(Ljava/lang/Runnable;)V

    .line 268
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    invoke-virtual {v0, p1, p2}, Lo/qF;->d(J)V

    .line 269
    iget-object p1, p0, Lo/xf;->p:Lo/qF;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/qF;->b(Z)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V
    .locals 4

    .line 379
    invoke-virtual {p0}, Lo/xf;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 382
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 385
    :cond_2
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 386
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/qF;->d(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/qF;->b(Z)V

    .line 388
    iget-object v0, p0, Lo/xf;->v:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lo/xf;->v:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 390
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Lo/Af;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e(Lo/Af;)V

    return-void
.end method

.method protected b(Lo/tZ;)V
    .locals 5

    .line 851
    new-instance v0, Lo/TextPaint;

    invoke-direct {v0}, Lo/TextPaint;-><init>()V

    .line 852
    invoke-virtual {p1}, Lo/tZ;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 854
    invoke-virtual {p1, v2}, Lo/tZ;->c(Ljava/lang/String;)Lo/tZ$Activity;

    move-result-object v3

    invoke-virtual {v3}, Lo/tZ$Activity;->a()Ljava/lang/String;

    move-result-object v3

    .line 853
    invoke-static {v3}, Lo/ud;->c(Ljava/lang/String;)Lo/ud$ActionBar;

    move-result-object v3

    iget v3, v3, Lo/ud$ActionBar;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 856
    :cond_1
    invoke-virtual {v0, v2}, Lo/TextPaint;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 859
    :cond_2
    iget-object p1, p0, Lo/xf;->f:Lo/tX;

    invoke-virtual {p1, v0}, Lo/tX;->c(Ljava/util/Set;)V

    return-void
.end method

.method public c(J)Ljava/nio/ByteBuffer;
    .locals 3

    .line 397
    iget-object v0, p0, Lo/xf;->o:Lo/xc;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xc;->a(J)Lo/pK;

    move-result-object v0

    if-eqz v0, :cond_0

    long-to-int p2, p1

    .line 398
    invoke-interface {v0, p2}, Lo/pK;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c(I)V
    .locals 4

    int-to-long v0, p1

    .line 259
    iget-object p1, p0, Lo/xf;->p:Lo/qF;

    invoke-virtual {p1}, Lo/qF;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 260
    invoke-virtual {p0, v0, v1}, Lo/xf;->b(J)V

    return-void
.end method

.method protected c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 4

    .line 673
    instance-of v0, p1, Lo/rB;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    goto :goto_0

    .line 677
    :cond_0
    instance-of v0, p1, Lo/sZ;

    if-eqz v0, :cond_3

    .line 678
    check-cast p1, Lo/sZ;

    invoke-virtual {p1}, Lo/sZ;->c()Lo/xD;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 680
    iget-object v0, p0, Lo/xf;->s:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lo/xD;->a(Landroid/content/Context;)V

    .line 683
    :cond_1
    invoke-static {p1}, Lo/qZ;->b(Lo/xD;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    const-class v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    if-eqz v0, :cond_2

    .line 688
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->b:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cG:Lcom/netflix/mediaclient/StatusCode;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 691
    :cond_2
    invoke-direct {p0, p1}, Lo/xf;->e(Lo/xD;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Lcom/netflix/mediaclient/media/AudioSource;)Z
    .locals 5

    .line 364
    invoke-virtual {p0}, Lo/xf;->n()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 369
    :cond_2
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/qF;->c(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/qF;->b(Z)V

    .line 371
    iget-object v0, p0, Lo/xf;->u:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v2, p0, Lo/xf;->u:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 373
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(II)V
    .locals 4

    .line 641
    iget-object v0, p0, Lo/xf;->H:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "StreamingPlaybackSession min: %d, max: %d"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 642
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    if-nez v0, :cond_1

    .line 644
    iget-object p1, p0, Lo/xf;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->c()Lo/Aq;

    move-result-object p1

    .line 645
    :goto_0
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionPlayer null in setVideoBitrateRanges. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 647
    :cond_1
    invoke-virtual {v0, p1, p2}, Lo/qF;->c(II)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/media/Language;)V
    .locals 4

    .line 328
    iget-object v0, p0, Lo/xf;->w:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lo/xf;->w:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 330
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected d(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Z
    .locals 5

    .line 576
    iget-object v0, p0, Lo/xf;->r:Lo/rD;

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0, p0, p1}, Lo/rD;->d(Lo/xf;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/rA;

    move-result-object v0

    iput-object v0, p0, Lo/xf;->y:Lo/rA;

    .line 579
    :cond_0
    iget-object v0, p0, Lo/xf;->y:Lo/rA;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 580
    iget-object p1, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v0, "Error recovery handler not found!"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 584
    :cond_1
    invoke-static {}, Lo/adZ;->c()Ljava/lang/String;

    move-result-object v0

    .line 585
    iget-object v2, p0, Lo/xf;->y:Lo/rA;

    invoke-interface {v2}, Lo/rA;->f()Ljava/lang/String;

    move-result-object v2

    .line 586
    iget-object v3, p0, Lo/xf;->H:Ljava/lang/String;

    const-string v4, "Error recovery handler found..."

    invoke-static {v3, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v3, Lo/xp;

    invoke-direct {v3, p0, v0, p1, v2}, Lo/xp;-><init>(Lo/xf;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Ljava/lang/String;)V

    .line 591
    iget-object v4, p0, Lo/xf;->y:Lo/rA;

    invoke-interface {v4, v3}, Lo/rA;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    move-result-object v3

    .line 592
    invoke-direct {p0, v0, p1, v3, v2}, Lo/xf;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;Ljava/lang/String;)V

    .line 593
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    if-eq v3, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected e(Ljava/lang/String;J)J
    .locals 6

    .line 870
    iget-object v0, p0, Lo/xf;->f:Lo/tX;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lo/tX;->c(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x7fffffff

    .line 873
    invoke-static {p1, p2, p3, v0, v1}, Lo/tV;->e(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object p1

    .line 874
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 875
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/tF;

    invoke-virtual {p1}, Lo/tF;->e()J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public e(Landroid/view/ViewGroup;)Lo/Cj;
    .locals 3

    .line 478
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    iget-object v1, p0, Lo/xf;->I:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->n()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v1

    iget-object v2, p0, Lo/xf;->I:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->k()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lo/qF;->d(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lo/Cj;

    move-result-object p1

    return-object p1
.end method

.method public e(F)V
    .locals 1

    .line 294
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    invoke-virtual {v0, p1}, Lo/qF;->c(F)V

    return-void
.end method

.method public final e(J)V
    .locals 0

    .line 254
    invoke-virtual {p0, p1, p2}, Lo/xf;->b(J)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    .line 498
    iput-object p1, p0, Lo/xf;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 499
    iget-object v0, p0, Lo/xf;->k:Lo/xw;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->c()Lo/Aq;

    move-result-object p1

    invoke-virtual {p1}, Lo/Aq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/xw;->d(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, p2}, Lo/xf;->a(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-void
.end method

.method public e(Lo/Af;)V
    .locals 1

    .line 462
    iget-object v0, p0, Lo/xf;->K:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->d(Lo/Af;)V

    return-void
.end method

.method public e(Lo/pC;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lo/xf;->F:Lo/pC;

    return-void
.end method

.method public f()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public g()V
    .locals 1

    .line 299
    new-instance v0, Lo/xl;

    invoke-direct {v0, p0}, Lo/xl;-><init>(Lo/xf;)V

    invoke-virtual {p0, v0}, Lo/xf;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 229
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/qF;->b(Z)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 234
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/qF;->b(Z)V

    .line 235
    new-instance v0, Lo/xj;

    invoke-direct {v0, p0}, Lo/xj;-><init>(Lo/xf;)V

    invoke-virtual {p0, v0}, Lo/xf;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 246
    new-instance v0, Lo/xn;

    invoke-direct {v0, p0}, Lo/xn;-><init>(Lo/xf;)V

    invoke-virtual {p0, v0}, Lo/xf;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()[Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 3

    .line 354
    iget-object v0, p0, Lo/xf;->m:Lo/xz;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xz;->b(J)[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 4

    .line 347
    iget-object v0, p0, Lo/xf;->v:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lo/xf;->v:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 349
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()Lcom/netflix/mediaclient/media/Watermark;
    .locals 3

    .line 403
    iget-object v0, p0, Lo/xf;->m:Lo/xz;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xz;->c(J)Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 4

    .line 335
    iget-object v0, p0, Lo/xf;->u:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lo/xf;->u:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/AudioSource;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 337
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o()Lcom/netflix/mediaclient/media/Language;
    .locals 4

    .line 321
    iget-object v0, p0, Lo/xf;->w:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lo/xf;->w:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/Language;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 323
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
    .locals 2

    .line 423
    iget-object v0, p0, Lo/xf;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0}, Lo/xf;->s()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    :goto_0
    iput-object v0, p0, Lo/xf;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 437
    :cond_1
    iget-object v0, p0, Lo/xf;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-object v0

    .line 425
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Did you forget to set the playbackType during the constructor of the session."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()Lcom/netflix/mediaclient/service/player/StreamProfileType;
    .locals 3

    .line 408
    iget-object v0, p0, Lo/xf;->m:Lo/xz;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xz;->i(J)Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v0

    return-object v0
.end method

.method public r()V
    .locals 3

    .line 418
    iget-object v0, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xw;->c(J)V

    return-void
.end method

.method public s()Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 3

    .line 413
    iget-object v0, p0, Lo/xf;->m:Lo/xz;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xz;->f(J)Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;
    .locals 1

    .line 443
    iget-object v0, p0, Lo/xf;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 651
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Lo/qF;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()V
    .locals 1

    .line 467
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    invoke-virtual {v0}, Lo/qF;->e()V

    .line 468
    new-instance v0, Lo/xq;

    invoke-direct {v0, p0}, Lo/xq;-><init>(Lo/xf;)V

    invoke-virtual {p0, v0}, Lo/xf;->a(Ljava/lang/Runnable;)V

    .line 471
    iget-object v0, p0, Lo/xf;->y:Lo/rA;

    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v0}, Lo/rA;->c()V

    :cond_0
    return-void
.end method

.method public w()F
    .locals 1

    .line 493
    iget-object v0, p0, Lo/xf;->p:Lo/qF;

    invoke-virtual {v0}, Lo/qF;->h()F

    move-result v0

    return v0
.end method

.method protected x()V
    .locals 10

    .line 512
    iget-object v0, p0, Lo/xf;->l:Lo/xv;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->d(J)V

    .line 513
    iget-object v0, p0, Lo/xf;->l:Lo/xv;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->c(J)V

    .line 514
    iget-object v0, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    iget v3, p0, Lo/xf;->z:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lo/xw;->c(JZ)V

    .line 515
    iget-object v4, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v5

    sget-object v7, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->c:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    const-wide/16 v8, -0x1

    invoke-virtual/range {v4 .. v9}, Lo/xw;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;J)V

    .line 516
    iget-object v0, p0, Lo/xf;->j:Lo/uh;

    invoke-virtual {v0}, Lo/uh;->a()V

    .line 517
    iget-boolean v0, p0, Lo/xf;->J:Z

    if-eqz v0, :cond_1

    .line 518
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->b:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    invoke-virtual {p0, v0}, Lo/xf;->a(Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V

    .line 520
    :cond_1
    iget-object v0, p0, Lo/xf;->A:Lo/ta;

    invoke-interface {v0}, Lo/ta;->g()V

    .line 521
    iget-object v0, p0, Lo/xf;->l:Lo/xv;

    invoke-virtual {v0}, Lo/xv;->d()V

    .line 522
    iget-object v0, p0, Lo/xf;->o:Lo/xc;

    invoke-virtual {v0}, Lo/xc;->e()V

    .line 523
    iget-object v0, p0, Lo/xf;->k:Lo/xw;

    invoke-virtual {v0}, Lo/xw;->c()V

    .line 524
    iget-object v0, p0, Lo/xf;->m:Lo/xz;

    invoke-virtual {v0}, Lo/xz;->e()V

    .line 525
    iget-object v0, p0, Lo/xf;->q:Lo/xi;

    invoke-virtual {v0}, Lo/xi;->e()V

    return-void
.end method

.method public y()V
    .locals 4

    .line 637
    iget-object v0, p0, Lo/xf;->a:Lo/xo;

    invoke-virtual {p0}, Lo/xf;->d()J

    move-result-wide v1

    iget-object v3, p0, Lo/xf;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    invoke-interface {v0, v1, v2, v3}, Lo/xo;->d(JLcom/netflix/mediaclient/media/PreferredLanguageData;)V

    return-void
.end method
