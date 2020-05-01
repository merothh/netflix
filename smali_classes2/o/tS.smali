.class abstract Lo/tS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tS$TaskDescription;,
        Lo/tS$ActionBar;,
        Lo/tS$Application;
    }
.end annotation


# instance fields
.field private final a:Lo/uj;

.field protected final b:Lo/ua;

.field private final c:Lo/tJ;

.field private final d:Lo/tS$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/tS$TaskDescription<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lo/tE;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:I

.field private final j:Lo/tS$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/tS$TaskDescription<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ua;Lo/tJ;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lo/tS$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/tS$TaskDescription;-><init>(Lo/tS$4;)V

    iput-object v0, p0, Lo/tS;->d:Lo/tS$TaskDescription;

    .line 66
    new-instance v0, Lo/tS$TaskDescription;

    invoke-direct {v0, v1}, Lo/tS$TaskDescription;-><init>(Lo/tS$4;)V

    iput-object v0, p0, Lo/tS;->j:Lo/tS$TaskDescription;

    .line 69
    iput-object p1, p0, Lo/tS;->b:Lo/ua;

    .line 70
    new-instance p1, Lo/uj;

    iget-object v0, p0, Lo/tS;->b:Lo/ua;

    invoke-direct {p1, v0, p3, p4}, Lo/uj;-><init>(Lo/ua;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    iput-object p1, p0, Lo/tS;->a:Lo/uj;

    .line 71
    iput-object p2, p0, Lo/tS;->c:Lo/tJ;

    return-void
.end method

.method private static a(Ljava/util/List;J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/tE;",
            ">;J)",
            "Ljava/util/List<",
            "Lo/tE;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tE;

    .line 220
    invoke-virtual {v1}, Lo/tE;->e()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Lo/tE;->h()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_0

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method static synthetic b(Lo/tS;)Lo/uj;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/tS;->a:Lo/uj;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized b(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lo/tE;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v2, v1, Lo/tS;->b:Lo/ua;

    invoke-virtual {v2}, Lo/ua;->h()I

    move-result v2

    .line 119
    iget-object v3, v1, Lo/tS;->d:Lo/tS$TaskDescription;

    invoke-virtual {v3, v0}, Lo/tS$TaskDescription;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Lo/tS;->e:I

    if-ne v3, v2, :cond_0

    .line 120
    iget-object v0, v1, Lo/tS;->d:Lo/tS$TaskDescription;

    invoke-virtual {v0}, Lo/tS$TaskDescription;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v4, v1, Lo/tS;->b:Lo/ua;

    invoke-virtual {v4, v0}, Lo/ua;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 124
    invoke-static {v5}, Lo/ud;->c(Ljava/lang/String;)Lo/ud$ActionBar;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    iget-object v14, v6, Lo/ud$ActionBar;->c:Ljava/lang/String;

    .line 129
    iget-object v7, v1, Lo/tS;->c:Lo/tJ;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, v14

    invoke-interface/range {v7 .. v12}, Lo/tJ;->c(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 131
    iget-object v7, v1, Lo/tS;->b:Lo/ua;

    invoke-virtual {v7, v5}, Lo/ua;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 132
    invoke-interface {v5}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 139
    :cond_3
    invoke-interface {v5}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v16, -0x1

    move-wide/from16 v9, v16

    move-wide v11, v9

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    cmp-long v7, v9, v16

    if-eqz v7, :cond_5

    .line 141
    iget-wide v7, v13, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    cmp-long v18, v7, v9

    if-lez v18, :cond_4

    iget-wide v7, v13, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    add-long v18, v9, v11

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    cmp-long v20, v7, v18

    if-gtz v20, :cond_4

    .line 143
    iget-wide v7, v13, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v11, v13, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v7, v11

    sub-long v11, v7, v9

    goto :goto_1

    .line 147
    :cond_4
    iget v8, v6, Lo/ud$ActionBar;->a:I

    move-object v7, v14

    move/from16 v18, v8

    move-object v8, v15

    move-object/from16 v19, v4

    move-object v4, v13

    move/from16 v13, v18

    invoke-static/range {v7 .. v13}, Lo/tE;->d(Ljava/lang/String;Ljava/util/List;JJI)Lo/tE;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 149
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v19, v4

    move-object v4, v13

    .line 153
    :cond_6
    :goto_2
    iget-wide v11, v4, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 154
    iget-wide v9, v4, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    move-object/from16 v4, v19

    goto :goto_1

    :cond_7
    move-object/from16 v19, v4

    cmp-long v4, v9, v16

    if-eqz v4, :cond_9

    .line 157
    iget v13, v6, Lo/ud$ActionBar;->a:I

    move-object v7, v14

    move-object v8, v15

    invoke-static/range {v7 .. v13}, Lo/tE;->d(Ljava/lang/String;Ljava/util/List;JJI)Lo/tE;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 159
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object/from16 v19, v4

    const-string v4, "nf_cache"

    const-string v5, "abandoned fragment (missing header): %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    .line 164
    invoke-static {v4, v5, v6}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_9
    :goto_3
    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 167
    :cond_a
    iput v2, v1, Lo/tS;->e:I

    .line 168
    iget-object v2, v1, Lo/tS;->d:Lo/tS$TaskDescription;

    invoke-virtual {v2, v0, v3}, Lo/tS$TaskDescription;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Lcom/google/android/exoplayer2/source/TrackGroup;J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "J)",
            "Ljava/util/List<",
            "Lo/tE;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lo/tS;->j:Lo/tS$TaskDescription;

    invoke-virtual {v0, p1}, Lo/tS$TaskDescription;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object p1, p0, Lo/tS;->j:Lo/tS$TaskDescription;

    invoke-virtual {p1}, Lo/tS$TaskDescription;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_1

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 180
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_1

    .line 181
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lo/tS;->j:Lo/tS$TaskDescription;

    invoke-virtual {v1, p1, v0}, Lo/tS$TaskDescription;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 187
    :goto_1
    invoke-virtual {p0, p1}, Lo/tS;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 190
    invoke-static {p1, p2, p3}, Lo/tS;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Lo/tP;Ljava/util/List;Ljava/util/List;JJZLo/uj$Activity;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/tP;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;JJZ",
            "Lo/uj$Activity;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 88
    new-instance v12, Lo/tS$ActionBar;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, p9

    invoke-direct {v12, v0, v1}, Lo/tS$ActionBar;-><init>(ILo/uj$Activity;)V

    .line 89
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 90
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/ud;->b(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v1, v2}, Lo/tP;->d(Ljava/lang/String;I)Lo/tM;

    move-result-object v1

    invoke-virtual {v1}, Lo/tM;->b()Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v14, v10, Lo/tS;->c:Lo/tJ;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v15, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    new-instance v9, Lo/tS$Application;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    move-object v0, v9

    move-object/from16 v1, p0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 p2, v13

    move-object v13, v9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lo/tS$Application;-><init>(Lo/tS;Landroid/net/Uri;Ljava/lang/String;JJZLo/uj$Activity;)V

    invoke-interface {v14, v15, v13}, Lo/tJ;->b(Ljava/lang/String;Lo/tJ$ActionBar;)V

    move-object/from16 v13, p2

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 94
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 95
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 96
    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 103
    instance-of v2, v1, Lo/uG;

    if-eqz v2, :cond_1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1000

    const/16 v2, 0x8

    ushr-long v7, v3, v2

    .line 105
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 106
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    sub-long/2addr v3, v5

    :cond_1
    move-wide v15, v3

    .line 109
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/ud;->b(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v2, v3}, Lo/tP;->d(Ljava/lang/String;I)Lo/tM;

    move-result-object v2

    invoke-virtual {v2}, Lo/tM;->b()Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v19

    move-object v13, v3

    move-wide/from16 v17, v5

    invoke-direct/range {v13 .. v19}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v7, 0x400

    .line 111
    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "nf_cache"

    const-string v4, "prefetching %s KB for subtitle %s"

    invoke-static {v1, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    iget-object v1, v10, Lo/tS;->a:Lo/uj;

    move/from16 v2, p8

    invoke-virtual {v1, v3, v2, v12}, Lo/uj;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;ZLo/uj$Activity;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ua;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lo/ua;

    .line 206
    iget-object v1, p0, Lo/tS;->b:Lo/ua;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(JJ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lo/tE;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lo/tS;->b:Lo/ua;

    invoke-virtual {v0, p1, p2}, Lo/ua;->a(J)Ljava/util/List;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lo/tS;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 199
    invoke-static {p1, p3, p4}, Lo/tS;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
