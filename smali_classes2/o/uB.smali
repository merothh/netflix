.class Lo/uB;
.super Lo/uz;
.source ""


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:I

.field private final i:Ljava/lang/String;

.field private final j:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/manifest/Stream;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;ILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object v11, p3

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    .line 27
    invoke-direct/range {v0 .. v9}, Lo/uz;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/manifest/Stream;Ljava/util/List;Ljava/util/List;JJLcom/google/android/exoplayer2/drm/DrmInitData;)V

    move/from16 v0, p11

    .line 28
    iput v0, v10, Lo/uB;->j:I

    move-object/from16 v0, p12

    .line 29
    iput-object v0, v10, Lo/uB;->f:Ljava/lang/String;

    .line 30
    iput-object v11, v10, Lo/uB;->i:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 31
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput v0, v10, Lo/uB;->g:I

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v2, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;

    iget-object v3, v0, Lo/uB;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual/range {p0 .. p0}, Lo/uB;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v14, 0x0

    const/4 v2, 0x0

    .line 54
    iget-object v3, v0, Lo/uB;->h:Ljava/lang/String;

    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "audio/mp4a-latm"

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, v0, Lo/uB;->h:Ljava/lang/String;

    const-string v5, "heaac-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    move-object v6, v4

    const/4 v15, 0x5

    goto :goto_1

    .line 58
    :cond_1
    iget-object v3, v0, Lo/uB;->h:Ljava/lang/String;

    const-string v5, "ddplus-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "audio/eac3"

    move-object v6, v3

    goto :goto_0

    .line 60
    :cond_2
    iget-object v3, v0, Lo/uB;->h:Ljava/lang/String;

    const-string v5, "xheaac-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v2, 0x2a

    move-object v6, v4

    const/16 v15, 0x2a

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_0
    const/4 v15, 0x0

    :goto_1
    const/4 v7, 0x0

    .line 66
    iget v2, v0, Lo/uB;->b:I

    mul-int/lit16 v8, v2, 0x3e8

    iget v9, v0, Lo/uB;->j:I

    const v10, 0xbb80

    const/4 v11, 0x0

    iget v12, v0, Lo/uB;->g:I

    iget-object v13, v0, Lo/uB;->f:Ljava/lang/String;

    const-string v5, "audio/mp4"

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;II)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 70
    new-instance v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format;->copyWithMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1
.end method
