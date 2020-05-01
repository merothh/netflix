.class Lo/uz;
.super Lo/uu;
.source ""


# instance fields
.field protected final b:I

.field private final f:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private final g:J

.field protected final h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private final p:F


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/manifest/Stream;Ljava/util/List;Ljava/util/List;JJLcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;JJ",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 39
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->urls()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p5

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lo/uu;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 v0, -0x1

    .line 28
    iput v0, v8, Lo/uz;->i:I

    .line 29
    iput v0, v8, Lo/uz;->j:I

    .line 30
    iput v0, v8, Lo/uz;->n:I

    .line 31
    iput v0, v8, Lo/uz;->l:I

    .line 34
    iput v0, v8, Lo/uz;->o:I

    move-wide/from16 v1, p7

    .line 40
    iput-wide v1, v8, Lo/uz;->g:J

    .line 41
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate()I

    move-result v1

    iput v1, v8, Lo/uz;->b:I

    .line 42
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->contentProfile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lo/uz;->h:Ljava/lang/String;

    .line 44
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->moov()Lo/su;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->sidx()Lo/su;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->moov()Lo/su;

    move-result-object v1

    .line 46
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->sidx()Lo/su;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v4, "DashManifestConverter"

    const-string v5, "stream has moov: %s, sidx: %s"

    .line 47
    invoke-static {v4, v5, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    invoke-virtual {v1}, Lo/su;->a()I

    move-result v3

    iput v3, v8, Lo/uz;->n:I

    .line 50
    invoke-virtual {v1}, Lo/su;->b()I

    move-result v1

    iput v1, v8, Lo/uz;->l:I

    .line 51
    invoke-virtual {v2}, Lo/su;->a()I

    move-result v1

    iput v1, v8, Lo/uz;->i:I

    .line 52
    invoke-virtual {v2}, Lo/su;->b()I

    move-result v1

    iput v1, v8, Lo/uz;->j:I

    .line 56
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->resW()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->resW()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iput v1, v8, Lo/uz;->m:I

    .line 57
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->resH()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->resH()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    iput v1, v8, Lo/uz;->k:I

    .line 58
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->vmaf()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->vmaf()I

    move-result v0

    :cond_3
    iput v0, v8, Lo/uz;->o:I

    .line 59
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->framerateValue()I

    move-result v0

    .line 60
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->framerateScale()I

    move-result v1

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_2

    :cond_4
    const/high16 v0, -0x40800000    # -1.0f

    .line 61
    :goto_2
    iput v0, v8, Lo/uz;->p:F

    move-object/from16 v0, p9

    .line 62
    iput-object v0, v8, Lo/uz;->f:Lcom/google/android/exoplayer2/drm/DrmInitData;

    return-void
.end method

.method private g()Z
    .locals 1

    .line 141
    iget v0, p0, Lo/uz;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Lo/tZ$Activity;
    .locals 4

    .line 121
    invoke-direct {p0}, Lo/uz;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lo/tZ$Activity;

    iget v1, p0, Lo/uz;->n:I

    iget v2, p0, Lo/uz;->l:I

    iget v3, p0, Lo/uz;->j:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lo/uz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/tZ$Activity;-><init>(IILjava/lang/String;)V

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Lo/tZ$Activity;

    const/4 v1, 0x0

    iget-wide v2, p0, Lo/uz;->g:J

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil;->c(J)I

    move-result v2

    invoke-virtual {p0}, Lo/uz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/tZ$Activity;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method protected c(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    .line 87
    iget-object v0, p0, Lo/uz;->h:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lo/uz;->h:Ljava/lang/String;

    const-string v1, "hevc-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video/hevc"

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lo/uz;->h:Ljava/lang/String;

    const-string v1, "vp9-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lo/uz;->h:Ljava/lang/String;

    const-string v1, "av1-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "video/av1"

    goto :goto_0

    :cond_2
    const-string v0, "video/avc"

    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    .line 97
    iget v0, p0, Lo/uz;->b:I

    mul-int/lit16 v5, v0, 0x3e8

    iget v6, p0, Lo/uz;->m:I

    iget v7, p0, Lo/uz;->k:I

    iget v8, p0, Lo/uz;->p:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "video/mp4"

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lo/uz;->f:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->copyWithDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 103
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {p0}, Lo/uz;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    new-instance v1, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    iget v1, p0, Lo/uz;->o:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 109
    new-instance v2, Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;

    invoke-direct {v2, v1}, Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 113
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Format;->copyWithMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method public c()Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 19

    move-object/from16 v0, p0

    .line 67
    iget-object v1, v0, Lo/uz;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    iget-object v1, v0, Lo/uz;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 71
    invoke-direct/range {p0 .. p0}, Lo/uz;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget v3, v0, Lo/uz;->n:I

    int-to-long v9, v3

    iget v3, v0, Lo/uz;->l:I

    iget v4, v0, Lo/uz;->j:I

    add-int/2addr v3, v4

    int-to-long v11, v3

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    iget v3, v0, Lo/uz;->n:I

    int-to-long v3, v3

    iget v5, v0, Lo/uz;->l:I

    iget v7, v0, Lo/uz;->j:I

    add-int/2addr v5, v7

    int-to-long v7, v5

    move-object v9, v1

    move-object v10, v2

    move-wide v15, v3

    move-wide/from16 v17, v7

    invoke-direct/range {v9 .. v18}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    move-object v7, v1

    goto :goto_0

    .line 76
    :cond_0
    iget-wide v1, v0, Lo/uz;->g:J

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil;->c(J)I

    move-result v1

    int-to-long v1, v1

    .line 77
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    new-instance v4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const-wide/16 v9, 0x0

    move-object v7, v4

    move-wide v11, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v9, v3

    move-object v10, v4

    move-wide/from16 v17, v1

    invoke-direct/range {v9 .. v18}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    move-object v7, v3

    .line 81
    :goto_0
    iget-object v2, v0, Lo/uz;->e:Ljava/lang/String;

    const-wide/16 v3, -0x1

    iget-object v1, v0, Lo/uz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/uz;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lo/uz;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->newInstance(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    return-object v1
.end method

.method public h()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lo/uz;->h:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/uz;->h:Ljava/lang/String;

    const-string v1, "nodrm-h264"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/uz;->h:Ljava/lang/String;

    const-string v1, "none-h264"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NfStream{downloadableId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/uz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bitrateKbps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/uz;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", contentProfile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/uz;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
