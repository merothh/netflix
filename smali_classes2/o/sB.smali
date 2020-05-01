.class public abstract Lo/sB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sB$ActionBar;
    }
.end annotation


# instance fields
.field private transient b:I

.field private transient c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field private transient d:Lo/sB$ActionBar;

.field private transient e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Lo/sB;->ak()J

    move-result-wide v0

    iput-wide v0, p0, Lo/sB;->e:J

    return-void
.end method

.method public static a(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/sB;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lo/sk$ActionBar;

    invoke-direct {v0, p0}, Lo/sk$ActionBar;-><init>(Lcom/google/gson/Gson;)V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/sk$ActionBar;->e(J)Lo/sk$ActionBar;

    move-result-object p0

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/sk$ActionBar;->d(Ljava/util/List;)Lo/sk$ActionBar;

    move-result-object p0

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/sk$ActionBar;->e(Ljava/util/List;)Lo/sk$ActionBar;

    move-result-object p0

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/sk$ActionBar;->a(Ljava/util/List;)Lo/sk$ActionBar;

    move-result-object p0

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/sk$ActionBar;->b(Ljava/util/List;)Lo/sk$ActionBar;

    move-result-object p0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/sk$ActionBar;->c(Ljava/util/List;)Lo/sk$ActionBar;

    move-result-object p0

    return-object p0
.end method

.method private ai()[Ljava/lang/String;
    .locals 4

    .line 408
    invoke-virtual {p0}, Lo/sB;->C()Ljava/util/List;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 411
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 412
    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 415
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 416
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 417
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 418
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static ak()J
    .locals 2

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(JLjava/util/List;Ljava/util/List;Lo/sp;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lo/sA;Ljava/util/List;Ljava/lang/String;JLcom/netflix/mediaclient/media/Watermark;JLo/so;Ljava/util/List;Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lo/sx;Lorg/json/JSONObject;)Lo/sB;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lo/sQ;",
            ">;",
            "Ljava/util/List<",
            "Lo/sC;",
            ">;",
            "Lo/sp;",
            "J",
            "Ljava/util/List<",
            "Lo/sO;",
            ">;",
            "Ljava/util/List<",
            "Lo/sb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;",
            "Lo/sA;",
            "Ljava/util/List<",
            "Lo/sv;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lcom/netflix/mediaclient/media/Watermark;",
            "J",
            "Lo/so;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/sx;",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/sB;"
        }
    .end annotation

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-wide/from16 v17, p16

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    .line 155
    new-instance v0, Lo/sk;

    move-object/from16 p0, v0

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v22}, Lo/sk;-><init>(JLjava/util/List;Ljava/util/List;Lo/sp;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lo/sA;Ljava/util/List;Ljava/lang/String;JLcom/netflix/mediaclient/media/Watermark;JLo/so;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 160
    new-instance v0, Lo/sB$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/sB$ActionBar;-><init>(Lo/sB$4;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/sB;->d:Lo/sB$ActionBar;

    .line 161
    iget-object v0, v1, Lo/sB;->d:Lo/sB$ActionBar;

    move-object/from16 v2, p21

    invoke-static {v0, v2}, Lo/sB$ActionBar;->c(Lo/sB$ActionBar;[B)[B

    .line 162
    iget-object v0, v1, Lo/sB;->d:Lo/sB$ActionBar;

    move-object/from16 v2, p22

    invoke-static {v0, v2}, Lo/sB$ActionBar;->c(Lo/sB$ActionBar;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object v0, v1, Lo/sB;->d:Lo/sB$ActionBar;

    move-object/from16 v2, p23

    invoke-static {v0, v2}, Lo/sB$ActionBar;->b(Lo/sB$ActionBar;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    iget-object v0, v1, Lo/sB;->d:Lo/sB$ActionBar;

    move-object/from16 v2, p24

    invoke-static {v0, v2}, Lo/sB$ActionBar;->c(Lo/sB$ActionBar;Lo/sx;)Lo/sx;

    .line 165
    iget-object v0, v1, Lo/sB;->d:Lo/sB$ActionBar;

    move-object/from16 v2, p25

    invoke-static {v0, v2}, Lo/sB$ActionBar;->d(Lo/sB$ActionBar;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    return-object v1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .line 474
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x14cbf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x73c60c87

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AVC-HP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "VP9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_3

    return v2

    :cond_3
    return v3
.end method


# virtual methods
.method public A()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 6

    .line 238
    invoke-virtual {p0}, Lo/sB;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    const/4 v1, 0x0

    .line 239
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 240
    new-instance v2, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-virtual {p0}, Lo/sB;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sv;

    invoke-virtual {p0}, Lo/sB;->m()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;-><init>(Lo/sv;J)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public B()Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 15

    .line 251
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 253
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->profile()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-direct {p0, v2}, Lo/sB;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2710

    const/16 v10, 0x2710

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d0

    const/16 v10, 0x7d0

    .line 255
    :goto_0
    new-instance v2, Lcom/netflix/mediaclient/media/PlayerManifestData;

    invoke-virtual {p0}, Lo/sB;->s()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lo/sB;->c()J

    move-result-wide v6

    invoke-direct {p0}, Lo/sB;->ai()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lo/sB;->aa()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v9

    .line 256
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->profile()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->flavor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v13

    .line 257
    invoke-virtual {p0}, Lo/sB;->ah()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/sB;->ag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/netflix/mediaclient/media/PlayerManifestData;-><init>(JJ[Ljava/lang/String;Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation

    const-string v0, "nf_manifest"

    const-string v1, "getVideoTracks"

    .line 264
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget v0, p0, Lo/sB;->b:I

    if-lez v0, :cond_4

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 269
    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxHeight()I

    move-result v3

    iget v4, p0, Lo/sB;->b:I

    if-gt v3, v4, :cond_0

    .line 271
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 276
    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/manifest/Stream;->resH()I

    move-result v6

    iget v7, p0, Lo/sB;->b:I

    if-gt v6, v7, :cond_1

    .line 277
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->toBuilder()Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;->streams(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;->build()Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    .line 285
    :cond_4
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public D()Landroid/graphics/Point;
    .locals 3

    .line 220
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 222
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->getAspectRatioWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->getAspectRatioHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sb;",
            ">;"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lo/sB;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sQ;",
            ">;"
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lo/sB;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lo/sB;->p()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lo/sB;->r()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sv;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lo/sB;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J()[Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 3

    .line 320
    invoke-virtual {p0}, Lo/sB;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    const/4 v1, 0x0

    .line 321
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 322
    invoke-virtual {p0}, Lo/sB;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sQ;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->newInstance(Lo/sQ;I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public K()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/SubtitleTrackData;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lo/sB;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 330
    :goto_0
    invoke-virtual {p0}, Lo/sB;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 331
    new-instance v2, Lcom/netflix/mediaclient/media/SubtitleTrackDataImpl;

    invoke-virtual {p0}, Lo/sB;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sQ;

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/media/SubtitleTrackDataImpl;-><init>(Lo/sQ;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sC;",
            ">;"
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lo/sB;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public M()[Lo/sP;
    .locals 4

    .line 338
    invoke-virtual {p0}, Lo/sB;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lo/sP;

    const/4 v1, 0x0

    .line 339
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 340
    new-instance v2, Lo/sP;

    invoke-virtual {p0}, Lo/sB;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sO;

    invoke-direct {v2, v3}, Lo/sP;-><init>(Lo/sO;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public N()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    .line 347
    invoke-virtual {p0}, Lo/sB;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    const/4 v1, 0x0

    .line 348
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 349
    invoke-virtual {p0}, Lo/sB;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sb;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/media/NccpAudioSource;->newInstance(Lo/sb;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public O()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
    .locals 1

    .line 376
    iget-object v0, p0, Lo/sB;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 3

    .line 366
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 367
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->profile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->profile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public Q()Z
    .locals 5

    .line 386
    invoke-static {}, Lo/sB;->ak()J

    move-result-wide v0

    iget-wide v2, p0, Lo/sB;->e:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R()J
    .locals 4

    .line 391
    iget-wide v0, p0, Lo/sB;->e:J

    invoke-static {}, Lo/sB;->ak()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public S()Ljava/lang/String;
    .locals 3

    .line 356
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 357
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->flavor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->flavor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 443
    invoke-virtual {p0}, Lo/sB;->g()Lo/sA;

    move-result-object v0

    invoke-virtual {v0}, Lo/sA;->b()Lo/sx;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/sB;->g()Lo/sA;

    move-result-object v0

    invoke-virtual {v0}, Lo/sA;->b()Lo/sx;

    move-result-object v0

    invoke-virtual {v0}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public U()Lo/sA;
    .locals 1

    .line 448
    invoke-virtual {p0}, Lo/sB;->g()Lo/sA;

    move-result-object v0

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lo/sB;->g()Lo/sA;

    move-result-object v0

    invoke-virtual {v0}, Lo/sA;->d()Lo/sx;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/sB;->g()Lo/sA;

    move-result-object v0

    invoke-virtual {v0}, Lo/sA;->d()Lo/sx;

    move-result-object v0

    invoke-virtual {v0}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public W()I
    .locals 1

    .line 396
    iget-object v0, p0, Lo/sB;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public X()J
    .locals 2

    .line 404
    invoke-virtual {p0}, Lo/sB;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public Y()[B
    .locals 1

    .line 514
    iget-object v0, p0, Lo/sB;->d:Lo/sB$ActionBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/sB$ActionBar;->a(Lo/sB$ActionBar;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public Z()Lcom/netflix/mediaclient/service/player/StreamProfileType;
    .locals 3

    .line 485
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 486
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->flavor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 487
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->flavor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/pH;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    sget-object v2, Lcom/netflix/mediaclient/service/player/StreamProfileType;->b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    if-eq v1, v2, :cond_0

    return-object v1

    .line 493
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->d:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    return-object v0
.end method

.method public abstract a()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timedtexttracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sQ;",
            ">;"
        }
    .end annotation
.end method

.method public aa()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;
    .locals 3

    .line 458
    invoke-virtual {p0}, Lo/sB;->D()Landroid/graphics/Point;

    move-result-object v0

    .line 459
    invoke-virtual {p0}, Lo/sB;->z()Landroid/graphics/Point;

    move-result-object v1

    .line 460
    new-instance v2, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object v2
.end method

.method public ab()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
    .locals 3

    .line 498
    invoke-virtual {p0}, Lo/sB;->n()Lo/so;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lo/sB;->n()Lo/so;

    move-result-object v0

    invoke-virtual {p0}, Lo/sB;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/ss;->d(Lo/so;J)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ac()Lcom/netflix/mediaclient/media/Watermark;
    .locals 1

    .line 453
    invoke-virtual {p0}, Lo/sB;->o()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    return-object v0
.end method

.method public ad()J
    .locals 2

    .line 542
    iget-wide v0, p0, Lo/sB;->e:J

    return-wide v0
.end method

.method public ae()Ljava/lang/String;
    .locals 2

    .line 529
    iget-object v0, p0, Lo/sB;->d:Lo/sB$ActionBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/sB$ActionBar;->d(Lo/sB$ActionBar;)Lo/sx;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/sB;->d:Lo/sB$ActionBar;

    invoke-static {v0}, Lo/sB$ActionBar;->d(Lo/sB$ActionBar;)Lo/sx;

    move-result-object v0

    invoke-virtual {v0}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public af()Lorg/json/JSONObject;
    .locals 1

    .line 534
    iget-object v0, p0, Lo/sB;->d:Lo/sB$ActionBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/sB$ActionBar;->e(Lo/sB$ActionBar;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ag()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lo/sB;->d:Lo/sB$ActionBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/sB$ActionBar;->b(Lo/sB$ActionBar;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ah()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lo/sB;->d:Lo/sB$ActionBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/sB$ActionBar;->c(Lo/sB$ActionBar;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public al()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;
    .locals 3

    .line 547
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 548
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->license()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->license()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movieId"
    .end annotation
.end method

.method public b(I)V
    .locals 0

    .line 470
    iput p1, p0, Lo/sB;->b:I

    return-void
.end method

.method public abstract c()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Lo/sE;

    invoke-virtual {p0, p1}, Lo/sB;->d(Lo/sE;)I

    move-result p1

    return p1
.end method

.method public d(Lo/sE;)I
    .locals 4

    .line 425
    invoke-interface {p1}, Lo/sE;->W()I

    move-result v0

    invoke-virtual {p0}, Lo/sB;->W()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lo/sB;->R()J

    move-result-wide v0

    .line 430
    invoke-interface {p1}, Lo/sE;->R()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public abstract d()Lo/sp;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdnResponseData"
    .end annotation
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lo/sB;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-void
.end method

.method public abstract e()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sC;",
            ">;"
        }
    .end annotation
.end method

.method public e(J)V
    .locals 0

    .line 538
    iput-wide p1, p0, Lo/sB;->e:J

    return-void
.end method

.method public abstract f()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trickplays"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sO;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()Lo/sA;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "links"
    .end annotation
.end method

.method public abstract h()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_tracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract i()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audio_tracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultTrackOrderList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sv;",
            ">;"
        }
    .end annotation
.end method

.method public abstract k()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playbackContextId"
    .end annotation
.end method

.method public abstract l()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration"
    .end annotation
.end method

.method public abstract m()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end method

.method public abstract n()Lo/so;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "choiceMap"
    .end annotation
.end method

.method public abstract o()Lcom/netflix/mediaclient/media/Watermark;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "watermarkInfo"
    .end annotation
.end method

.method public abstract p()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "servers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;"
        }
    .end annotation
.end method

.method public abstract q()Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eligibleABTests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract r()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;"
        }
    .end annotation
.end method

.method public s()Ljava/lang/Long;
    .locals 2

    .line 180
    invoke-virtual {p0}, Lo/sB;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public t()J
    .locals 2

    .line 170
    invoke-virtual {p0}, Lo/sB;->x()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xdbba0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x6ddd00

    :goto_0
    return-wide v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lo/sB;->d()Lo/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lo/sp;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lo/sB;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 210
    invoke-virtual {p0}, Lo/sB;->x()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()[B
    .locals 2

    .line 185
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 186
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->drmHeader()Lo/sw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Lo/sw;->a()[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()J
    .locals 2

    .line 215
    invoke-virtual {p0}, Lo/sB;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public z()Landroid/graphics/Point;
    .locals 3

    .line 229
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lo/sB;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 231
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->getCroppedWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->getCroppedHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
