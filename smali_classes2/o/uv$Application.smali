.class Lo/uv$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/uu;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:I

.field final synthetic e:Lo/uv;


# direct methods
.method constructor <init>(Lo/uv;Lcom/netflix/mediaclient/media/manifest/VideoTrack;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 158
    iput-object v1, v0, Lo/uv$Application;->e:Lo/uv;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->newTrackId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo/uv$Application;->c:Ljava/lang/String;

    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    .line 161
    iput v3, v0, Lo/uv$Application;->d:I

    .line 162
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->drmHeader()Lo/sw;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lo/uv$Application;->b:Z

    .line 163
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Lo/uv$Application;->a:Ljava/util/List;

    .line 166
    iget-boolean v3, v0, Lo/uv$Application;->b:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 167
    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct/range {p0 .. p0}, Lo/uv$Application;->e()Ljava/util/UUID;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lo/uv;->c(Lo/uv;)[B

    move-result-object v8

    const-string v9, "video/mp4"

    invoke-direct {v3, v7, v6, v9, v8}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 168
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v4, v4, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    aput-object v3, v4, v5

    invoke-direct {v6, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 173
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 174
    invoke-virtual {v9}, Lcom/netflix/mediaclient/media/manifest/Stream;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, v0, Lo/uv$Application;->a:Ljava/util/List;

    new-instance v4, Lo/uz;

    iget-object v8, v0, Lo/uv$Application;->c:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lo/uv;->a(Lo/uv;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static/range {p1 .. p1}, Lo/uv;->e(Lo/uv;)J

    move-result-wide v14

    move-object v7, v4

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v16}, Lo/uz;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/manifest/Stream;Ljava/util/List;Ljava/util/List;JJLcom/google/android/exoplayer2/drm/DrmInitData;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method constructor <init>(Lo/uv;Lo/sQ;Ljava/util/List;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/sQ;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 180
    iput-object v1, v0, Lo/uv$Application;->e:Lo/uv;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual/range {p2 .. p2}, Lo/sQ;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo/uv$Application;->c:Ljava/lang/String;

    const/4 v2, 0x3

    .line 182
    iput v2, v0, Lo/uv$Application;->d:I

    const/4 v2, 0x0

    .line 183
    iput-boolean v2, v0, Lo/uv$Application;->b:Z

    .line 184
    invoke-virtual/range {p2 .. p2}, Lo/sQ;->i()Ljava/util/Map;

    move-result-object v3

    const-string v4, "nflx-cmisc"

    .line 185
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lo/sQ;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ja"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v5, "dfxp-ls-sdh"

    .line 186
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 187
    invoke-virtual/range {p2 .. p2}, Lo/sQ;->a()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 188
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 189
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x0

    .line 191
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 192
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_2
    if-nez v2, :cond_3

    .line 194
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    if-nez v2, :cond_1

    if-nez v6, :cond_1

    :cond_4
    move-object v9, v10

    :cond_5
    if-eqz v9, :cond_6

    .line 201
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 202
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sI;

    if-eqz v2, :cond_6

    .line 203
    invoke-virtual {v2}, Lo/sI;->b()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lo/sI;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 204
    new-instance v2, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;

    move-object/from16 v3, p2

    invoke-direct {v2, v3, v9}, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;-><init>(Lo/sQ;Ljava/lang/String;)V

    .line 205
    new-instance v3, Lo/uA;

    iget-object v11, v0, Lo/uv$Application;->c:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lo/uv;->a(Lo/uv;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static/range {p1 .. p1}, Lo/uv;->e(Lo/uv;)J

    move-result-wide v17

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lo/uv;->b(Lo/uv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move-object v10, v3

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v19, v2

    invoke-direct/range {v10 .. v20}, Lo/uA;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/netflix/mediaclient/service/player/common/NetflixTimedTextTrackData;Z)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/uv$Application;->a:Ljava/util/List;

    return-void

    .line 210
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/uv$Application;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lo/uv;Lo/sb;Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/sb;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 142
    iput-object v1, v0, Lo/uv$Application;->e:Lo/uv;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual/range {p2 .. p2}, Lo/sb;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo/uv$Application;->c:Ljava/lang/String;

    .line 144
    invoke-virtual/range {p2 .. p2}, Lo/sb;->f()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual/range {p2 .. p2}, Lo/sb;->h()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    .line 146
    iput v4, v0, Lo/uv$Application;->d:I

    const/4 v4, 0x0

    .line 147
    iput-boolean v4, v0, Lo/uv$Application;->b:Z

    .line 148
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lo/uv$Application;->a:Ljava/util/List;

    .line 151
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 152
    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/manifest/Stream;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget-object v15, v0, Lo/uv$Application;->a:Ljava/util/List;

    new-instance v14, Lo/uB;

    iget-object v4, v0, Lo/uv$Application;->c:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lo/uv;->a(Lo/uv;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static/range {p1 .. p1}, Lo/uv;->e(Lo/uv;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Lo/uv;->d(Lo/uv;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lo/sb;->m()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lo/sb;->d()Ljava/lang/String;

    move-result-object v18

    move-object v3, v14

    move-object v6, v2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v0, v14

    move/from16 v14, v17

    move-object v1, v15

    move-object/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Lo/uB;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/manifest/Stream;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e()Ljava/util/UUID;
    .locals 4

    .line 219
    iget-object v0, p0, Lo/uv$Application;->e:Lo/uv;

    iget-object v0, v0, Lo/uv;->e:Lo/sE;

    invoke-interface {v0}, Lo/sE;->ah()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->b:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    .line 220
    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    iget-object v2, p0, Lo/uv$Application;->e:Lo/uv;

    invoke-static {v2}, Lo/uv;->a(Lo/uv;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lo/uv$Application;->e:Lo/uv;

    invoke-static {v3}, Lo/uv;->g(Lo/uv;)Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 223
    sget-object v0, Lo/sU;->e:Ljava/util/UUID;

    return-object v0

    .line 227
    :cond_1
    sget-object v0, Lo/sU;->b:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method b(I)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 7

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v0, p0, Lo/uv$Application;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/uu;

    .line 234
    iget-boolean v2, p0, Lo/uv$Application;->b:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lo/uu;->h()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const-string v1, "DashManifestConverter"

    const-string v4, "skip stream %s"

    .line 237
    invoke-static {v1, v4, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 235
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lo/uu;->c()Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 243
    :cond_3
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v2, p0, Lo/uv$Application;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/tZ$Activity;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    iget-object v1, p0, Lo/uv$Application;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/uu;

    .line 263
    invoke-virtual {v2}, Lo/uu;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lo/uu;->a()Lo/tZ$Activity;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lo/tM;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    iget-object v1, p0, Lo/uv$Application;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/uu;

    .line 255
    invoke-virtual {v2}, Lo/uu;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lo/uu;->e()[Lo/tM;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
