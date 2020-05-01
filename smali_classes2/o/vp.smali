.class public Lo/vp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/LoadControl;
.implements Lo/tK$ActionBar;


# static fields
.field private static final b:J


# instance fields
.field private A:J

.field private B:Z

.field private C:I

.field private D:I

.field private E:J

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Z

.field private L:J

.field private M:J

.field private N:J

.field private final a:Lo/vh;

.field private final c:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

.field private final d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

.field private final e:Lo/tJ;

.field private f$781c5ac2:Ljava/lang/Object;

.field private g:I

.field private h:I

.field private final i:Lo/vl;

.field private final j:I

.field private k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

.field private l:Lo/tK;

.field private m:J

.field private n:I

.field private o:I

.field private p:Z

.field private q:J

.field private r:J

.field private s:I

.field private t:J

.field private u:Lo/vK;

.field private v:Z

.field private w:J

.field private x:Z

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lo/vp;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lo/vl;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/tJ;Lo/tK;Lo/vh;Lo/vK;Ljava/lang/String;)V
    .locals 6

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lo/vp;->s:I

    const-wide/16 v1, 0x0

    .line 59
    iput-wide v1, p0, Lo/vp;->t:J

    .line 88
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v4, 0x1

    const/high16 v5, 0x10000

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v3, p0, Lo/vp;->c:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 89
    iput-object p1, p0, Lo/vp;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    .line 90
    iput-object p2, p0, Lo/vp;->i:Lo/vl;

    .line 91
    iput-object p3, p0, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    .line 92
    iput-object p4, p0, Lo/vp;->e:Lo/tJ;

    .line 93
    iput-object p6, p0, Lo/vp;->a:Lo/vh;

    .line 94
    invoke-interface {p5}, Lo/tK;->j()I

    move-result p1

    iput p1, p0, Lo/vp;->j:I

    .line 95
    iput-wide v1, p0, Lo/vp;->m:J

    .line 96
    iput-object p5, p0, Lo/vp;->l:Lo/tK;

    .line 97
    invoke-interface {p5, p0}, Lo/tK;->a(Lo/tK$ActionBar;)V

    .line 98
    iput-boolean v0, p0, Lo/vp;->v:Z

    .line 99
    iput-boolean v0, p0, Lo/vp;->x:Z

    .line 100
    iput v0, p0, Lo/vp;->y:I

    .line 101
    iput-wide v1, p0, Lo/vp;->w:J

    .line 102
    iput-object p7, p0, Lo/vp;->u:Lo/vK;

    .line 103
    iput-boolean v0, p0, Lo/vp;->B:Z

    .line 104
    iput-object p8, p0, Lo/vp;->z:Ljava/lang/String;

    .line 105
    invoke-virtual {p6}, Lo/vh;->D()I

    move-result p1

    iput p1, p0, Lo/vp;->D:I

    .line 106
    invoke-virtual {p6}, Lo/vh;->n()I

    move-result p1

    iput p1, p0, Lo/vp;->C:I

    .line 107
    iput-boolean v0, p0, Lo/vp;->I:Z

    const-wide/16 p1, -0x1

    .line 108
    iput-wide p1, p0, Lo/vp;->E:J

    .line 109
    iput-boolean v0, p0, Lo/vp;->G:Z

    .line 110
    iput-boolean v0, p0, Lo/vp;->H:Z

    .line 111
    invoke-direct {p0}, Lo/vp;->h()V

    .line 112
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    iput-wide p1, p0, Lo/vp;->M:J

    .line 113
    invoke-virtual {p6}, Lo/vh;->I()Z

    move-result p1

    iput-boolean p1, p0, Lo/vp;->K:Z

    .line 114
    invoke-virtual {p6}, Lo/vh;->M()J

    move-result-wide p1

    iput-wide p1, p0, Lo/vp;->N:J

    .line 115
    invoke-virtual {p6}, Lo/vh;->K()I

    move-result p1

    iput p1, p0, Lo/vp;->J:I

    .line 116
    invoke-virtual {p6}, Lo/vh;->J()J

    move-result-wide p1

    iput-wide p1, p0, Lo/vp;->L:J

    return-void
.end method

.method private a(IIJJ)V
    .locals 0

    if-gt p1, p2, :cond_1

    cmp-long p1, p3, p5

    if-lez p1, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    iget-object p1, p0, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->c(I)J

    move-result-wide p3

    iget-object p1, p0, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    .line 576
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide p1

    sub-long/2addr p3, p1

    iget-wide p1, p0, Lo/vp;->N:J

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x3e8

    mul-long p3, p3, p1

    .line 578
    sget-wide p1, Lo/vp;->b:J

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lo/vp;->M:J

    goto :goto_1

    .line 566
    :cond_1
    :goto_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    iput-wide p1, p0, Lo/vp;->M:J

    :goto_1
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 520
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v1, v3, :cond_4

    .line 521
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 524
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v2

    if-ltz v2, :cond_1

    .line 525
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 526
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 528
    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 530
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 531
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 532
    instance-of v6, v5, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    if-eqz v6, :cond_0

    .line 533
    check-cast v5, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;->c()Z

    move-result v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :cond_2
    if-eqz v4, :cond_5

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :cond_5
    return v0
.end method

.method private c(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->z()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->n()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->C()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lo/vp;->C:I

    return-void
.end method

.method private c(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Lo/vp;->p:Z

    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lo/vp;->c:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->reset()V

    :cond_0
    return-void
.end method

.method private f()I
    .locals 8

    .line 490
    iget-object v0, p0, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->h(I)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;->i()Ljava/lang/String;

    move-result-object v3

    .line 493
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;->d()J

    move-result-wide v4

    .line 495
    iget-object v2, p0, Lo/vp;->e:Lo/tJ;

    const-wide/32 v6, 0x186a0

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    invoke-interface/range {v2 .. v7}, Lo/tJ;->c(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/tF;

    invoke-virtual {v0}, Lo/tF;->g()J

    move-result-wide v0

    long-to-int v1, v0

    :cond_0
    return v1
.end method

.method private h()V
    .locals 3

    .line 130
    iget-object v0, p0, Lo/vp;->l:Lo/tK;

    invoke-static {v0}, Lo/tI;->c(Lo/tK;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 132
    iget v0, p0, Lo/vp;->D:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    .line 135
    iget-boolean v0, p0, Lo/vp;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->n()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->l()I

    move-result v0

    :goto_0
    iput v0, p0, Lo/vp;->g:I

    .line 136
    iget-boolean v0, p0, Lo/vp;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->w()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->v()I

    move-result v0

    :goto_1
    iput v0, p0, Lo/vp;->h:I

    .line 137
    iget-boolean v0, p0, Lo/vp;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->A()I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->x()I

    move-result v0

    :goto_2
    iput v0, p0, Lo/vp;->o:I

    goto/16 :goto_c

    .line 150
    :cond_3
    iget-boolean v0, p0, Lo/vp;->B:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/vp;->G:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->n()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->l()I

    move-result v0

    :goto_3
    iput v0, p0, Lo/vp;->g:I

    .line 151
    iget-boolean v0, p0, Lo/vp;->B:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lo/vp;->G:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->w()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->v()I

    move-result v0

    :goto_4
    iput v0, p0, Lo/vp;->h:I

    .line 152
    iget-boolean v0, p0, Lo/vp;->B:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lo/vp;->G:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->A()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->x()I

    move-result v0

    :goto_5
    iput v0, p0, Lo/vp;->o:I

    goto/16 :goto_c

    .line 145
    :cond_7
    iget-boolean v0, p0, Lo/vp;->G:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->n()I

    move-result v0

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->l()I

    move-result v0

    :goto_6
    iput v0, p0, Lo/vp;->g:I

    .line 146
    iget-boolean v0, p0, Lo/vp;->G:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->w()I

    move-result v0

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->v()I

    move-result v0

    :goto_7
    iput v0, p0, Lo/vp;->h:I

    .line 147
    iget-boolean v0, p0, Lo/vp;->G:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->A()I

    move-result v0

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->x()I

    move-result v0

    :goto_8
    iput v0, p0, Lo/vp;->o:I

    goto :goto_c

    .line 140
    :cond_b
    iget-boolean v0, p0, Lo/vp;->x:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lo/vp;->C:I

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->l()I

    move-result v0

    :goto_9
    iput v0, p0, Lo/vp;->g:I

    .line 141
    iget-boolean v0, p0, Lo/vp;->x:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->w()I

    move-result v0

    goto :goto_a

    :cond_d
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->v()I

    move-result v0

    :goto_a
    iput v0, p0, Lo/vp;->h:I

    .line 142
    iget-boolean v0, p0, Lo/vp;->x:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->A()I

    move-result v0

    goto :goto_b

    :cond_e
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->x()I

    move-result v0

    :goto_b
    iput v0, p0, Lo/vp;->o:I

    .line 155
    :goto_c
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->t()I

    move-result v0

    iput v0, p0, Lo/vp;->n:I

    .line 156
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->H()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lo/vp;->l:Lo/tK;

    invoke-interface {v0}, Lo/tK;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    iput-boolean v1, p0, Lo/vp;->H:Z

    goto :goto_d

    .line 158
    :cond_10
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->f()I

    move-result v0

    iput v0, p0, Lo/vp;->g:I

    .line 159
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->y()I

    move-result v0

    iput v0, p0, Lo/vp;->h:I

    .line 160
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->u()I

    move-result v0

    iput v0, p0, Lo/vp;->o:I

    .line 161
    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->s()I

    move-result v0

    iput v0, p0, Lo/vp;->n:I

    .line 162
    iput-boolean v1, p0, Lo/vp;->x:Z

    .line 163
    iput-boolean v1, p0, Lo/vp;->B:Z

    .line 164
    iput-boolean v1, p0, Lo/vp;->I:Z

    .line 165
    iput-boolean v1, p0, Lo/vp;->G:Z

    .line 166
    iput-boolean v1, p0, Lo/vp;->H:Z

    :goto_d
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 186
    iget v0, p0, Lo/vp;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 183
    iget v0, p0, Lo/vp;->o:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 179
    iget v0, p0, Lo/vp;->h:I

    return v0
.end method

.method public d()I
    .locals 2

    .line 174
    iget v0, p0, Lo/vp;->j:I

    iget-object v1, p0, Lo/vp;->c:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Lo/tC;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lo/vp;->h()V

    return-void
.end method

.method public e()I
    .locals 1

    .line 176
    iget v0, p0, Lo/vp;->n:I

    return v0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public g()J
    .locals 2

    .line 256
    iget-boolean v0, p0, Lo/vp;->K:Z

    if-nez v0, :cond_1

    .line 258
    iget-boolean v0, p0, Lo/vp;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->G()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-wide v0, Lo/vp;->b:J

    :goto_0
    return-wide v0

    .line 262
    :cond_1
    sget-wide v0, Lo/vp;->b:J

    return-wide v0
.end method

.method public getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;
    .locals 1

    .line 240
    iget-object v0, p0, Lo/vp;->c:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    .line 245
    iget-boolean v0, p0, Lo/vp;->K:Z

    if-nez v0, :cond_1

    .line 247
    iget-boolean v0, p0, Lo/vp;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->G()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-wide v0, Lo/vp;->b:J

    :goto_0
    return-wide v0

    .line 251
    :cond_1
    iget-wide v0, p0, Lo/vp;->M:J

    return-wide v0
.end method

.method public i()I
    .locals 2

    .line 190
    iget-object v0, p0, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->h(I)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;->b()I

    move-result v0

    return v0

    :cond_0
    const v0, 0xfa00

    return v0
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, v0}, Lo/vp;->c(Z)V

    return-void
.end method

.method public onReleased()V
    .locals 1

    const/4 v0, 0x1

    .line 231
    invoke-direct {p0, v0}, Lo/vp;->c(Z)V

    .line 232
    iget-object v0, p0, Lo/vp;->l:Lo/tK;

    invoke-interface {v0, p0}, Lo/tK;->d(Lo/tK$ActionBar;)V

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x1

    .line 223
    invoke-direct {p0, v0}, Lo/vp;->c(Z)V

    return-void
.end method

.method public onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 215
    invoke-static {p3}, Lo/vp;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Z

    move-result p1

    iput-boolean p1, p0, Lo/vp;->F:Z

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldContinueLoading(J)Z
    .locals 17

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    .line 353
    iget-object v0, v7, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->j()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;->b:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    const-string v10, "ASE-LoadControl"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v0, v1, :cond_2

    .line 356
    iput-boolean v12, v7, Lo/vp;->p:Z

    .line 357
    iget-wide v0, v7, Lo/vp;->m:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const-string v0, "shouldContinueLoading, start buffering"

    .line 358
    invoke-static {v10, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v7, Lo/vp;->m:J

    .line 361
    :cond_0
    iget-object v0, v7, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->g()I

    move-result v0

    if-ltz v0, :cond_2

    .line 362
    div-long v13, v8, v4

    int-to-long v0, v0

    cmp-long v6, v13, v0

    if-lez v6, :cond_2

    .line 366
    invoke-virtual {v7, v8, v9, v11}, Lo/vp;->shouldStartPlayback(JZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v11, [Ljava/lang/Object;

    .line 367
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "shouldContinueLoading, buffering complete reached (%dms), playback not started. pause buffering"

    invoke-static {v10, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 368
    iget-object v0, v7, Lo/vp;->i:Lo/vl;

    invoke-virtual {v0}, Lo/vl;->d()Lo/tH$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v0}, Lo/tH$TaskDescription;->d()V

    :cond_1
    return v12

    .line 378
    :cond_2
    iget-boolean v0, v7, Lo/vp;->x:Z

    const/4 v13, 0x2

    if-eqz v0, :cond_6

    .line 379
    iget v0, v7, Lo/vp;->D:I

    if-eq v0, v13, :cond_3

    .line 383
    iget-boolean v0, v7, Lo/vp;->B:Z

    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long v4, v8, v4

    add-long/2addr v0, v4

    iget-wide v4, v7, Lo/vp;->w:J

    sub-long/2addr v0, v4

    iget v4, v7, Lo/vp;->y:I

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_6

    .line 384
    iput-boolean v11, v7, Lo/vp;->B:Z

    .line 385
    invoke-direct/range {p0 .. p0}, Lo/vp;->h()V

    goto :goto_1

    .line 389
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 390
    iget-wide v14, v7, Lo/vp;->A:J

    cmp-long v6, v0, v14

    if-lez v6, :cond_6

    .line 391
    iget-object v6, v7, Lo/vp;->a:Lo/vh;

    invoke-virtual {v6}, Lo/vh;->B()I

    move-result v6

    int-to-long v14, v6

    add-long/2addr v14, v0

    iput-wide v14, v7, Lo/vp;->A:J

    .line 392
    iget-object v6, v7, Lo/vp;->l:Lo/tK;

    invoke-interface {v6}, Lo/tK;->a()Lo/tC;

    .line 393
    iget-object v6, v7, Lo/vp;->u:Lo/vK;

    if-eqz v6, :cond_5

    iget-object v6, v7, Lo/vp;->l:Lo/tK;

    invoke-static {v6}, Lo/tI;->c(Lo/tK;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v7, Lo/vp;->z:Ljava/lang/String;

    const-string v14, "Default"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 394
    iget-wide v14, v7, Lo/vp;->w:J

    sub-long/2addr v0, v14

    .line 395
    iget-object v6, v7, Lo/vp;->u:Lo/vK;

    invoke-virtual {v6, v0, v1}, Lo/vK;->d(J)I

    move-result v0

    if-ltz v0, :cond_4

    .line 397
    div-long v4, v8, v4

    long-to-int v1, v4

    sub-int/2addr v0, v1

    invoke-direct {v7, v0}, Lo/vp;->c(I)V

    goto :goto_0

    .line 402
    :cond_4
    iput-boolean v12, v7, Lo/vp;->x:Z

    goto :goto_0

    .line 406
    :cond_5
    iput-boolean v12, v7, Lo/vp;->x:Z

    .line 408
    :goto_0
    invoke-direct/range {p0 .. p0}, Lo/vp;->h()V

    .line 414
    :cond_6
    :goto_1
    iget-boolean v0, v7, Lo/vp;->I:Z

    if-eqz v0, :cond_a

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 417
    iget-object v4, v7, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->i()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;->c()Landroid/util/Range;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 419
    iget-object v5, v7, Lo/vp;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v5

    long-to-double v5, v5

    iget-object v14, v7, Lo/vp;->a:Lo/vh;

    invoke-virtual {v14}, Lo/vh;->E()D

    move-result-wide v14

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual/range {p0 .. p0}, Lo/vp;->i()I

    move-result v16

    add-int v4, v4, v16

    int-to-double v12, v4

    mul-double v14, v14, v12

    cmpl-double v4, v5, v14

    if-lez v4, :cond_7

    const/4 v12, 0x1

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_9

    .line 422
    iget-boolean v4, v7, Lo/vp;->G:Z

    if-nez v4, :cond_a

    .line 423
    iget-wide v4, v7, Lo/vp;->E:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_8

    .line 424
    iput-wide v0, v7, Lo/vp;->E:J

    goto :goto_3

    :cond_8
    sub-long/2addr v0, v4

    .line 426
    iget-object v2, v7, Lo/vp;->a:Lo/vh;

    invoke-virtual {v2}, Lo/vh;->F()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 427
    iput-boolean v11, v7, Lo/vp;->G:Z

    .line 428
    invoke-direct/range {p0 .. p0}, Lo/vp;->h()V

    goto :goto_3

    :cond_9
    const-wide/16 v0, -0x1

    .line 433
    iput-wide v0, v7, Lo/vp;->E:J

    .line 434
    iget-boolean v0, v7, Lo/vp;->G:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 435
    iput-boolean v0, v7, Lo/vp;->G:Z

    .line 436
    invoke-direct/range {p0 .. p0}, Lo/vp;->h()V

    .line 441
    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lo/vp;->d()I

    move-result v12

    .line 443
    invoke-direct/range {p0 .. p0}, Lo/vp;->f()I

    move-result v13

    .line 444
    iget-boolean v0, v7, Lo/vp;->K:Z

    if-eqz v0, :cond_b

    .line 445
    iget v0, v7, Lo/vp;->J:I

    add-int v2, v13, v0

    iget-wide v5, v7, Lo/vp;->L:J

    move-object/from16 v0, p0

    move v1, v12

    move-wide/from16 v3, p1

    invoke-direct/range {v0 .. v6}, Lo/vp;->a(IIJJ)V

    .line 447
    :cond_b
    iget-boolean v0, v7, Lo/vp;->p:Z

    if-eqz v0, :cond_f

    .line 449
    iget v0, v7, Lo/vp;->g:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v2, v8, v0

    if-gez v2, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_e

    .line 450
    iget-wide v0, v7, Lo/vp;->t:J

    cmp-long v2, v8, v0

    if-lez v2, :cond_d

    iget v0, v7, Lo/vp;->s:I

    if-le v12, v0, :cond_e

    :cond_d
    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 453
    :cond_f
    iget v0, v7, Lo/vp;->g:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v2, v8, v0

    if-gez v2, :cond_e

    goto :goto_5

    :goto_6
    if-eqz v0, :cond_10

    if-le v12, v13, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    .line 457
    :goto_7
    iget-object v1, v7, Lo/vp;->a:Lo/vh;

    invoke-virtual {v1}, Lo/vh;->a()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    cmp-long v3, v8, v1

    if-gez v3, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    :goto_8
    or-int/2addr v0, v1

    .line 461
    iget-boolean v1, v7, Lo/vp;->p:Z

    const-wide/32 v2, 0xf4240

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    const/4 v1, 0x0

    .line 462
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v1, v7, Lo/vp;->n:I

    add-int/2addr v4, v1

    iput v4, v7, Lo/vp;->s:I

    .line 463
    iget v1, v7, Lo/vp;->h:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    sub-long v4, v8, v4

    iget v1, v7, Lo/vp;->o:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v13, v1

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v7, Lo/vp;->t:J

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 464
    div-int/lit16 v12, v12, 0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    iget v4, v7, Lo/vp;->s:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v11

    div-long v4, v8, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/4 v4, 0x3

    iget-wide v5, v7, Lo/vp;->t:J

    div-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "shouldContinueLoading: drain until capacity increase %d kB -> %d kB or duration drain %d s -> %d s"

    invoke-static {v10, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_9

    .line 465
    :cond_12
    iget-boolean v1, v7, Lo/vp;->p:Z

    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 466
    div-int/lit16 v12, v12, 0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    div-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "shouldContinueLoading: stop draining,capacity %d kB, buffer duration %d s"

    invoke-static {v10, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 469
    :cond_13
    :goto_9
    iget-wide v1, v7, Lo/vp;->r:J

    cmp-long v3, v8, v1

    if-gtz v3, :cond_14

    iget-object v1, v7, Lo/vp;->c:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, v7, Lo/vp;->q:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_15

    .line 470
    :cond_14
    iget-object v1, v7, Lo/vp;->i:Lo/vl;

    invoke-virtual {v1}, Lo/vl;->d()Lo/tH$TaskDescription;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 472
    iget-wide v2, v7, Lo/vp;->r:J

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v7, Lo/vp;->r:J

    .line 473
    iget-wide v2, v7, Lo/vp;->q:J

    iget-object v4, v7, Lo/vp;->c:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v7, Lo/vp;->q:J

    .line 474
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v9

    iget-object v2, v7, Lo/vp;->c:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v2

    int-to-long v11, v2

    iget v2, v7, Lo/vp;->g:I

    int-to-long v13, v2

    iget v2, v7, Lo/vp;->j:I

    int-to-long v2, v2

    move-object v8, v1

    move-wide v15, v2

    invoke-interface/range {v8 .. v16}, Lo/tH$TaskDescription;->b(JJJJ)V

    :cond_15
    xor-int/lit8 v1, v0, 0x1

    .line 478
    iput-boolean v1, v7, Lo/vp;->p:Z

    return v0
.end method

.method public shouldStartPlayback(JZ)Z
    .locals 20

    move-object/from16 v1, p0

    .line 285
    iget-boolean v0, v1, Lo/vp;->F:Z

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    const-string v0, "ASE-LoadControl"

    const-string v7, "shouldStartPlayback: in offline mode"

    .line 286
    invoke-static {v0, v7}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x9c4

    cmp-long v0, v7, v9

    if-lez v0, :cond_4

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 289
    :cond_0
    iget-object v0, v1, Lo/vp;->f$781c5ac2:Ljava/lang/Object;

    const/16 v7, 0x6c

    if-nez v0, :cond_2

    .line 290
    iget-object v0, v1, Lo/vp;->a:Lo/vh;

    iget-object v8, v1, Lo/vp;->e:Lo/tJ;

    :try_start_0
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v6

    aput-object v0, v9, v5

    invoke-static {v5, v7, v3}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-array v8, v4, [Ljava/lang/Class;

    const-class v10, Lo/vh;

    aput-object v10, v8, v5

    const-class v10, Lo/tJ;

    aput-object v10, v8, v6

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, v1, Lo/vp;->f$781c5ac2:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    throw v2

    :cond_1
    throw v0

    .line 292
    :cond_2
    :goto_0
    iget-object v0, v1, Lo/vp;->f$781c5ac2:Ljava/lang/Object;

    iget-object v8, v1, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->c()J

    move-result-wide v8

    iget-object v10, v1, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    .line 293
    invoke-interface {v10}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->h()F

    move-result v10

    iget-wide v11, v1, Lo/vp;->m:J

    iget-object v13, v1, Lo/vp;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    .line 296
    invoke-virtual {v13}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    iget-object v15, v1, Lo/vp;->a:Lo/vh;

    .line 297
    invoke-virtual {v15}, Lo/vh;->aw()Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v15, v1, Lo/vp;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    invoke-virtual {v15}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->e()I

    move-result v15

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 298
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/vp;->i()I

    move-result v16

    iget-object v7, v1, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    .line 299
    invoke-interface {v7}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->j()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    move-result-object v7

    iget-object v5, v1, Lo/vp;->k:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    .line 301
    invoke-interface {v5, v4}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->h(I)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    move-result-object v5

    .line 302
    invoke-virtual/range {p0 .. p0}, Lo/vp;->d()I

    move-result v17

    const/16 v6, 0xb

    :try_start_1
    new-array v4, v6, [Ljava/lang/Object;

    .line 292
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0xa

    aput-object v17, v4, v18

    const/16 v17, 0x9

    aput-object v5, v4, v17

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v19, 0x8

    aput-object v5, v4, v19

    const/4 v5, 0x7

    aput-object v7, v4, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v16, 0x6

    aput-object v7, v4, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x5

    aput-object v7, v4, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v11, 0x2

    aput-object v7, v4, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    const/16 v7, 0x6c

    invoke-static {v8, v7, v3}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    const-string v9, "c"

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v6, v8

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v8, v6, v10

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v8, v6, v10

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v15

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v16

    const-class v8, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    aput-object v8, v6, v5

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v6, v19

    const-class v5, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    aput-object v5, v6, v17

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v6, v18

    invoke-virtual {v7, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x65f1

    const/16 v5, 0x70

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v5, "e"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    :cond_4
    :goto_2
    if-eqz v5, :cond_a

    const-wide/16 v6, 0x0

    .line 305
    iput-wide v6, v1, Lo/vp;->m:J

    .line 306
    iget-object v0, v1, Lo/vp;->i:Lo/vl;

    invoke-virtual {v0}, Lo/vl;->d()Lo/tH$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 308
    iget-object v4, v1, Lo/vp;->a:Lo/vh;

    invoke-virtual {v4}, Lo/vh;->N()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    iget-object v4, v1, Lo/vp;->a:Lo/vh;

    invoke-virtual {v4}, Lo/vh;->L()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    const-string v4, ""

    :goto_3
    invoke-interface {v0, v4}, Lo/tH$TaskDescription;->a(Ljava/lang/String;)V

    .line 310
    :cond_6
    iget-boolean v0, v1, Lo/vp;->v:Z

    if-nez v0, :cond_a

    .line 311
    iget-object v0, v1, Lo/vp;->l:Lo/tK;

    invoke-static {v0}, Lo/tI;->c(Lo/tK;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lo/vp;->z:Ljava/lang/String;

    const-string v4, "Default"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 312
    iget v0, v1, Lo/vp;->D:I

    if-eq v0, v2, :cond_8

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lo/vp;->w:J

    .line 318
    iget-object v0, v1, Lo/vp;->u:Lo/vK;

    if-eqz v0, :cond_9

    .line 319
    invoke-virtual {v0}, Lo/vK;->a()I

    move-result v0

    iput v0, v1, Lo/vp;->y:I

    .line 320
    iget v0, v1, Lo/vp;->y:I

    if-lez v0, :cond_9

    const/4 v2, 0x1

    .line 321
    iput-boolean v2, v1, Lo/vp;->x:Z

    .line 322
    iget-object v2, v1, Lo/vp;->u:Lo/vK;

    invoke-virtual {v2, v0}, Lo/vK;->c(I)V

    .line 323
    iget v0, v1, Lo/vp;->D:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 324
    iget v0, v1, Lo/vp;->y:I

    invoke-direct {v1, v0}, Lo/vp;->c(I)V

    .line 325
    invoke-direct/range {p0 .. p0}, Lo/vp;->h()V

    .line 326
    iget-wide v6, v1, Lo/vp;->w:J

    iget-object v0, v1, Lo/vp;->a:Lo/vh;

    invoke-virtual {v0}, Lo/vh;->B()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lo/vp;->A:J

    .line 328
    :cond_7
    iget v0, v1, Lo/vp;->D:I

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    .line 329
    iput-boolean v0, v1, Lo/vp;->I:Z

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    .line 335
    iput-boolean v0, v1, Lo/vp;->I:Z

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    .line 339
    :goto_4
    iput-boolean v0, v1, Lo/vp;->v:Z

    :cond_a
    return v5

    :catchall_1
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_b

    throw v2

    :cond_b
    throw v0
.end method
