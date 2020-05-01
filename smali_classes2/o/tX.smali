.class public Lo/tX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tX$StateListAnimator;,
        Lo/tX$ActionBar;
    }
.end annotation


# instance fields
.field private a:Lo/tP;

.field private final b:Lo/tZ;

.field private final c:Lo/ua;

.field private final d:Ljava/lang/Object;

.field private final e:Lo/uj;

.field private g:Lo/wU;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/tX$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/vY;Lo/tZ;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/tX;->d:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/tX;->i:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/tX;->h:Ljava/util/Map;

    .line 68
    invoke-static {p1}, Lo/tX;->a(Landroid/content/Context;)Lo/ua;

    move-result-object p1

    iput-object p1, p0, Lo/tX;->c:Lo/ua;

    .line 69
    new-instance p1, Lo/uj;

    iget-object v0, p0, Lo/tX;->c:Lo/ua;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lo/uj;-><init>(Lo/ua;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    iput-object p1, p0, Lo/tX;->e:Lo/uj;

    .line 70
    iput-object p3, p0, Lo/tX;->b:Lo/tZ;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lo/ua;
    .locals 4

    const-string v0, "header"

    const/high16 v1, 0x10000

    const/high16 v2, 0x200000

    const/4 v3, 0x0

    .line 64
    invoke-static {p0, v0, v1, v2, v3}, Lo/ua;->a(Landroid/content/Context;Ljava/lang/String;IILo/tW;)Lo/ua;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/tX;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/tX;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private static b(Ljava/lang/String;ILjava/nio/ByteBuffer;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;"
        }
    .end annotation

    const-string v1, "nf_cache"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "sidx"

    .line 256
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    .line 259
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 260
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    if-ne v6, v0, :cond_1

    move-object/from16 v7, p2

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x8

    move-object/from16 v7, p2

    .line 267
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v4, v5

    .line 270
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-nez v4, :cond_2

    const-string v0, "could not find sidx"

    .line 273
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 277
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 278
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 279
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    add-int v8, v4, p1

    int-to-long v8, v8

    if-nez v0, :cond_3

    .line 284
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v10, v0

    int-to-long v12, v5

    add-long/2addr v8, v12

    .line 285
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v12, v0

    :goto_1
    add-long/2addr v8, v12

    goto :goto_2

    .line 287
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    int-to-long v12, v5

    add-long/2addr v8, v12

    .line 288
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    goto :goto_1

    .line 290
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 291
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 292
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v13, "parsing %s header: sidx offset=%d, size=%d, entries=%d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    aput-object p0, v14, v3

    .line 294
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v4

    invoke-static {v1, v13, v14}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_4

    const v5, 0x7fffffff

    .line 296
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    and-int/2addr v5, v13

    .line 297
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 298
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    const-wide/32 v16, 0xf4240

    int-to-long v13, v6

    move-wide/from16 v22, v13

    move-wide v13, v10

    move v2, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v22

    .line 299
    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    move/from16 p0, v4

    int-to-long v3, v2

    const-wide/32 v20, 0xf4240

    move-wide/from16 v18, v3

    .line 300
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    .line 301
    new-instance v2, Lo/tF;

    move/from16 v22, v6

    int-to-long v5, v5

    move-object v13, v2

    move-wide/from16 v18, v8

    move-wide/from16 v20, v5

    invoke-direct/range {v13 .. v21}, Lo/tF;-><init>(JJJJ)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v8, v5

    add-long/2addr v10, v3

    add-int/lit8 v4, p0, 0x1

    move/from16 v6, v22

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_3

    .line 306
    :cond_4
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "unable to parse sidx"

    .line 308
    invoke-static {v1, v0, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic c(Lo/tX;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/tX;->i:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Ljava/lang/String;ILjava/nio/ByteBuffer;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lo/tX;->b(Ljava/lang/String;ILjava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lo/tX;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/tX;->h:Ljava/util/Map;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 11

    .line 213
    iget-object v0, p0, Lo/tX;->b:Lo/tZ;

    invoke-virtual {v0, p1}, Lo/tZ;->c(Ljava/lang/String;)Lo/tZ$Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "nf_cache"

    const-string v1, "unable to find header infor for stream %s"

    .line 218
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 221
    :cond_0
    iget-object v3, p0, Lo/tX;->c:Lo/ua;

    invoke-virtual {v3}, Lo/ua;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lo/tZ$Activity;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DataSpec;

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0}, Lo/tZ$Activity;->d()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0}, Lo/tZ$Activity;->c()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v0}, Lo/tZ$Activity;->a()Ljava/lang/String;

    move-result-object v10

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 223
    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v5, p0, Lo/tX;->c:Lo/ua;

    sget-object v6, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->INSTANCE:Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 225
    invoke-virtual {v0}, Lo/tZ$Activity;->c()I

    move-result v5

    new-array v5, v5, [B

    .line 227
    :try_start_0
    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 228
    :goto_0
    :try_start_1
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 229
    array-length v6, v5

    sub-int/2addr v6, v3

    invoke-interface {v4, v5, v3, v6}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v3, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 237
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 238
    throw p1

    :catch_0
    const/4 v3, 0x0

    .line 237
    :catch_1
    :cond_1
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    if-lez v3, :cond_2

    .line 240
    invoke-static {v5, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 241
    invoke-virtual {v0}, Lo/tZ$Activity;->d()I

    move-result v0

    invoke-static {p1, v0, v3}, Lo/tX;->b(Ljava/lang/String;ILjava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v3, p0, Lo/tX;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    :try_start_2
    iget-object v4, p0, Lo/tX;->h:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "nf_cache"

    const-string v2, "header %s parsed from cache"

    .line 246
    invoke-static {p1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :catchall_1
    move-exception p1

    .line 245
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    return v2
.end method


# virtual methods
.method public b(Ljava/lang/String;Lo/tJ$ActionBar;)V
    .locals 12

    .line 137
    iget-object v0, p0, Lo/tX;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lo/tX;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 141
    invoke-interface {p2, p1, v1}, Lo/tJ$ActionBar;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 142
    :cond_0
    monitor-exit v0

    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lo/tX;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tX$StateListAnimator;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 148
    invoke-virtual {v1, p2}, Lo/tX$StateListAnimator;->b(Lo/tJ$ActionBar;)V

    .line 149
    :cond_2
    monitor-exit v0

    return-void

    .line 153
    :cond_3
    iget-object v1, p0, Lo/tX;->b:Lo/tZ;

    invoke-virtual {v1, p1}, Lo/tZ;->c(Ljava/lang/String;)Lo/tZ$Activity;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lo/tX;->a:Lo/tP;

    if-nez v2, :cond_5

    const-string v1, "nf_cache"

    const-string v2, "No LocationSelector passed to HeaderCache"

    .line 155
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 156
    invoke-interface {p2, p1}, Lo/tJ$ActionBar;->d(Ljava/lang/String;)V

    .line 157
    :cond_4
    monitor-exit v0

    return-void

    .line 159
    :cond_5
    iget-object v2, p0, Lo/tX;->a:Lo/tP;

    invoke-virtual {v1}, Lo/tZ$Activity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/ud;->b(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, p1, v3}, Lo/tP;->d(Ljava/lang/String;I)Lo/tM;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v1, "nf_cache"

    const-string v2, "unable to find location info for header %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 161
    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p2, :cond_6

    .line 162
    invoke-interface {p2, p1}, Lo/tJ$ActionBar;->d(Ljava/lang/String;)V

    .line 163
    :cond_6
    monitor-exit v0

    return-void

    .line 165
    :cond_7
    iget-object v3, p0, Lo/tX;->i:Ljava/util/Map;

    new-instance v4, Lo/tX$StateListAnimator;

    invoke-direct {v4, p2}, Lo/tX$StateListAnimator;-><init>(Lo/tJ$ActionBar;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance p2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v2}, Lo/tM;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lo/tZ$Activity;->d()I

    move-result v2

    int-to-long v7, v2

    .line 167
    invoke-virtual {v1}, Lo/tZ$Activity;->c()I

    move-result v2

    int-to-long v9, v2

    invoke-virtual {v1}, Lo/tZ$Activity;->a()Ljava/lang/String;

    move-result-object v11

    move-object v5, p2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 168
    iget-object v2, p0, Lo/tX;->e:Lo/uj;

    iget-object v3, p0, Lo/tX;->g:Lo/wU;

    new-instance v4, Lo/tX$ActionBar;

    invoke-virtual {v1}, Lo/tZ$Activity;->d()I

    move-result v1

    invoke-direct {v4, p0, p1, v1}, Lo/tX$ActionBar;-><init>(Lo/tX;Ljava/lang/String;I)V

    invoke-virtual {v2, p2, v3, v4}, Lo/uj;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wU;Lo/uj$Activity;)V

    .line 169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lo/tX;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 110
    :try_start_1
    iget-object v1, p0, Lo/tX;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 111
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 114
    :try_start_2
    invoke-direct {p0, p1}, Lo/tX;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lo/tX;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    :try_start_3
    iget-object v1, p0, Lo/tX;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 117
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 121
    invoke-static {v1, p2, p3, p4, p5}, Lo/tV;->c(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 124
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    .line 111
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, v0, v1}, Lo/tX;->b(Ljava/lang/String;Lo/tJ$ActionBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lo/wU;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lo/tX;->g:Lo/wU;

    return-void
.end method

.method public d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lo/tX;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lo/tX;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Lo/tP;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_cache"

    const-string v2, "Setting LocationSelector in HeaderCache %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    iput-object p1, p0, Lo/tX;->a:Lo/tP;

    return-void
.end method
