.class public Lo/uA;
.super Lo/uu;
.source ""


# instance fields
.field private final b:Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final j:Z


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;J",
            "Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;",
            "Z)V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p9

    .line 31
    iget-object v5, v9, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->i:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lo/uu;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 32
    iget-object v0, v9, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->c:Ljava/lang/String;

    iput-object v0, v8, Lo/uA;->g:Ljava/lang/String;

    move/from16 v0, p10

    .line 33
    iput-boolean v0, v8, Lo/uA;->j:Z

    .line 34
    iget-object v0, v9, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->a:Ljava/lang/String;

    iput-object v0, v8, Lo/uA;->f:Ljava/lang/String;

    .line 35
    iget v0, v9, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->f:I

    iput v0, v8, Lo/uA;->h:I

    .line 36
    iput-object v9, v8, Lo/uA;->b:Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 8

    .line 54
    iget-object v0, p0, Lo/uA;->g:Ljava/lang/String;

    const-string v1, "dfxp-ls-sdh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/ttml+xml"

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 56
    :cond_0
    iget-object v0, p0, Lo/uA;->g:Ljava/lang/String;

    const-string v1, "webvtt-lssdh-ios8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "text/vtt"

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lo/uA;->g:Ljava/lang/String;

    const-string v1, "nflx-cmisc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "application/nflx-cmisc"

    goto :goto_0

    .line 63
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lo/uA;->b:Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Lo/uA;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    new-instance v1, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v4, 0x0

    const/16 v5, 0x100

    .line 68
    iget-boolean v6, p0, Lo/uA;->j:Z

    iget-object v7, p0, Lo/uA;->f:Ljava/lang/String;

    move-object v1, p1

    move-object v2, v3

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 69
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Format;->copyWithMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/uA;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is not handled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lo/tZ$Activity;
    .locals 4

    .line 74
    new-instance v0, Lo/tZ$Activity;

    iget v1, p0, Lo/uA;->h:I

    invoke-virtual {p0}, Lo/uA;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lo/tZ$Activity;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public c()Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 24

    move-object/from16 v0, p0

    .line 41
    iget-object v1, v0, Lo/uA;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixDataSourceUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, v0, Lo/uA;->g:Ljava/lang/String;

    const-string v3, "nflx-cmisc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    new-instance v13, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    new-instance v8, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-object v2, v0, Lo/uA;->b:Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;

    iget v2, v2, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->g:I

    int-to-long v4, v2

    iget-object v2, v0, Lo/uA;->b:Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;

    iget v2, v2, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->h:I

    int-to-long v6, v2

    move-object v2, v8

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    const-wide/16 v5, 0x1

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v14, 0x0

    move-object v3, v13

    move-object v4, v8

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, v14

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    .line 45
    new-instance v10, Lo/uG;

    iget-object v3, v0, Lo/uA;->e:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iget-object v2, v0, Lo/uA;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Lo/uA;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lo/uA;->b()Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    move-object v7, v1

    move-object v8, v13

    invoke-direct/range {v2 .. v9}, Lo/uG;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/lang/String;)V

    return-object v10

    .line 47
    :cond_0
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    new-instance v15, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const-wide/16 v4, 0x0

    iget v2, v0, Lo/uA;->h:I

    int-to-long v6, v2

    move-object v2, v15

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object v14, v8

    invoke-direct/range {v14 .. v23}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    .line 48
    new-instance v13, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;

    iget-object v3, v0, Lo/uA;->e:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iget-object v2, v0, Lo/uA;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Lo/uA;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lo/uA;->b()Ljava/lang/String;

    move-result-object v10

    iget v2, v0, Lo/uA;->h:I

    int-to-long v11, v2

    move-object v2, v13

    move-object v7, v1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/lang/String;J)V

    return-object v13
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-super {p0}, Lo/uu;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()[Lo/tM;
    .locals 1

    .line 23
    invoke-super {p0}, Lo/uu;->e()[Lo/tM;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Z
    .locals 1

    .line 23
    invoke-super {p0}, Lo/uu;->h()Z

    move-result v0

    return v0
.end method
