.class public final Lo/uL$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Lo/tK;

.field private final b:Lo/tX;

.field private final c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final d:Lo/tD;

.field private final e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

.field private final f:Lo/td;

.field private final g:Lo/td;

.field private final h:Lo/td;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lo/tK;Lo/tD;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lo/tX;Lo/td;Lo/td;Lo/td;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lo/uL$StateListAnimator;->c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 76
    iput-object p2, p0, Lo/uL$StateListAnimator;->a:Lo/tK;

    .line 77
    iput-object p3, p0, Lo/uL$StateListAnimator;->d:Lo/tD;

    .line 78
    iput-object p4, p0, Lo/uL$StateListAnimator;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    .line 79
    iput-object p5, p0, Lo/uL$StateListAnimator;->b:Lo/tX;

    .line 80
    iput-object p6, p0, Lo/uL$StateListAnimator;->f:Lo/td;

    .line 81
    iput-object p7, p0, Lo/uL$StateListAnimator;->h:Lo/td;

    .line 82
    iput-object p8, p0, Lo/uL$StateListAnimator;->g:Lo/td;

    return-void
.end method

.method private c(I)Lo/td;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 98
    iget-object p1, p0, Lo/uL$StateListAnimator;->f:Lo/td;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lo/uL$StateListAnimator;->h:Lo/td;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lo/uL$StateListAnimator;->g:Lo/td;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public d(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;IJZZ)Lo/uL;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v9, p7

    move/from16 v15, p9

    move/from16 v16, p10

    .line 90
    iget-object v1, v0, Lo/uL$StateListAnimator;->c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v8

    .line 91
    new-instance v18, Lo/uL;

    move-object/from16 v1, v18

    iget-object v11, v0, Lo/uL$StateListAnimator;->a:Lo/tK;

    iget-object v12, v0, Lo/uL$StateListAnimator;->d:Lo/tD;

    iget-object v13, v0, Lo/uL$StateListAnimator;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    iget-object v14, v0, Lo/uL$StateListAnimator;->b:Lo/tX;

    move-object/from16 p1, v1

    move/from16 v1, p6

    .line 94
    invoke-direct {v0, v1}, Lo/uL$StateListAnimator;->c(I)Lo/td;

    move-result-object v17

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v17}, Lo/uL;-><init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;ILcom/google/android/exoplayer2/upstream/DataSource;JLo/tK;Lo/tD;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lo/tX;ZZLo/td;)V

    return-object v18
.end method
