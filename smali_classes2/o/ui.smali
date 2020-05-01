.class public Lo/ui;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ui$Activity;,
        Lo/ui$StateListAnimator;,
        Lo/ui$Application;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final b:Lo/H;

.field private final c:Lo/sz;

.field private final d:Lo/tg;

.field private final e:Landroid/content/Context;

.field private final f:Lo/vY;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/ui$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/tg;Lo/sz;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/H;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/ui;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/ui;->j:Ljava/util/Queue;

    .line 83
    iput-object p1, p0, Lo/ui;->e:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lo/ui;->d:Lo/tg;

    .line 85
    iput-object p3, p0, Lo/ui;->c:Lo/sz;

    .line 86
    iput-object p4, p0, Lo/ui;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 87
    iput-object p5, p0, Lo/ui;->b:Lo/H;

    .line 88
    new-instance p2, Lo/we;

    invoke-direct {p2, p1}, Lo/we;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/ui;->f:Lo/vY;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 383
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 384
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object p0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 287
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 288
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private a(Lo/uC;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/uC;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p1, v1}, Lo/uC;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 228
    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 229
    invoke-direct {p0, v1}, Lo/ui;->a(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Lo/vh;Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;J)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/vh;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            "J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p2

    .line 261
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 262
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/16 v5, 0x7c

    const/16 v6, 0x621

    const/4 v7, 0x0

    .line 265
    invoke-static {v7, v6, v5}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v9, v4, :cond_1

    .line 267
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v13, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    sub-int v14, v4, v9

    sub-int/2addr v14, v12

    :try_start_0
    new-array v15, v11, [Ljava/lang/Object;

    .line 268
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v12

    aput-object v13, v15, v7

    const/16 v13, 0x98

    invoke-static {v7, v13, v10}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    new-array v11, v11, [Ljava/lang/Class;

    const-class v13, Lcom/google/android/exoplayer2/Format;

    aput-object v13, v11, v7

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object v10, v8, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    throw v2

    :cond_0
    throw v0

    .line 271
    :cond_1
    iget-object v4, v1, Lo/ui;->d:Lo/tg;

    .line 272
    invoke-virtual {v4, v0, v7}, Lo/tg;->d(Lo/vh;Z)Lo/vw;

    move-result-object v4

    .line 273
    invoke-virtual/range {p1 .. p1}, Lo/vh;->bw()Z

    move-result v9

    const/4 v13, 0x3

    :try_start_1
    new-array v14, v13, [Ljava/lang/Object;

    .line 272
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v14, v11

    aput-object v8, v14, v12

    aput-object v4, v14, v7

    const/16 v4, 0x6ad

    invoke-static {v7, v4, v10}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v8, "a"

    new-array v9, v13, [Ljava/lang/Class;

    const-class v10, Lo/vw;

    aput-object v10, v9, v7

    invoke-static {v7, v6, v5}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v12

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v11

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    iget-object v8, v1, Lo/ui;->d:Lo/tg;

    move-wide/from16 v9, p3

    long-to-int v13, v9

    invoke-virtual {v8, v13, v0, v4, v12}, Lo/tg;->a$5221b314(ILo/vh;[Ljava/lang/Object;Z)I

    move-result v0

    .line 277
    aget-object v0, v4, v0

    invoke-static {v7, v6, v5}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v5, "c"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    new-array v3, v11, [Ljava/lang/Object;

    .line 278
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "nf_cache"

    const-string v5, "prefetching %s kbps video bitrate based on estimated throughput %s kbps"

    invoke-static {v4, v5, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    throw v2

    :cond_2
    throw v0

    :cond_3
    :goto_1
    return-object v2
.end method

.method static synthetic a(Lo/ui;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lo/ui;->d()V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lo/ui;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->a(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lo/vh;Lo/uC;Ljava/util/List;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/vh;",
            "Lo/uC;",
            "Ljava/util/List<",
            "Lo/tE;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 240
    invoke-virtual {p2, v1}, Lo/uC;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 241
    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 242
    invoke-direct {p0, p1, v1, p4, p5}, Lo/ui;->a(Lo/vh;Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;J)Ljava/util/List;

    move-result-object v2

    .line 243
    invoke-static {v1, p3, v3, v2}, Lo/ui;->c(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;Ljava/util/List;ILjava/util/List;)V

    .line 244
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 245
    :cond_1
    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 247
    invoke-static {}, Lo/dS;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lo/ui;->e(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    invoke-direct {p0, v1, p4, p5}, Lo/ui;->e(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;J)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 250
    :cond_2
    invoke-direct {p0, v1}, Lo/ui;->a(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Ljava/util/List;

    move-result-object v2

    .line 252
    :goto_1
    invoke-static {v1, p3, v3, v2}, Lo/ui;->c(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;Ljava/util/List;ILjava/util/List;)V

    .line 253
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static c(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;Ljava/util/List;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            "Ljava/util/List<",
            "Lo/tE;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/tE;

    .line 360
    invoke-virtual {v0}, Lo/tE;->b()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 363
    invoke-virtual {v0}, Lo/tE;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/ui;->a(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 365
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 366
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    .line 368
    iget v3, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v3, v4, :cond_2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 369
    iget v2, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "nf_cache"

    const-string v4, "skipping prefetch (already cached): wanted=%s , cached=%s"

    invoke-static {v2, v4, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic c(Lo/ui;Lo/ui$StateListAnimator;Lo/sE;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lo/ui;->e(Lo/ui$StateListAnimator;Lo/sE;)V

    return-void
.end method

.method private d()V
    .locals 5

    .line 140
    iget-object v0, p0, Lo/ui;->j:Ljava/util/Queue;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lo/ui;->j:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ui$StateListAnimator;

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "nf_cache"

    const-string v3, "processing %s for prefetch"

    .line 144
    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    iget-object v0, v1, Lo/ui$StateListAnimator;->c:Lo/Ae;

    iget-object v0, v0, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-direct {p0, v0}, Lo/ui;->a(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;->c:Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;

    invoke-virtual {v1, v0}, Lo/ui$StateListAnimator;->a(Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V

    .line 147
    invoke-direct {p0}, Lo/ui;->d()V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lo/ui;->c:Lo/sz;

    iget-object v2, v1, Lo/ui$StateListAnimator;->c:Lo/Ae;

    iget-wide v2, v2, Lo/Ae;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Lo/ui$StateListAnimator;->c:Lo/Ae;

    invoke-static {v3}, Lo/xx;->d(Lo/Ae;)Lo/xx;

    move-result-object v3

    new-instance v4, Lo/ui$4;

    invoke-direct {v4, p0, v1}, Lo/ui$4;-><init>(Lo/ui;Lo/ui$StateListAnimator;)V

    invoke-virtual {v0, v2, v3, v4}, Lo/sz;->c(Ljava/lang/Long;Lo/xx;Lo/sD$ActionBar;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lo/ui;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 142
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private e(Lo/vh;Lo/tP;Lo/uC;J)J
    .locals 9

    .line 335
    new-instance v0, Lo/vJ;

    new-instance v1, Lo/ui$Application;

    invoke-direct {v1, p3, p4, p5}, Lo/ui$Application;-><init>(Lo/uC;J)V

    iget-object p3, p0, Lo/ui;->d:Lo/tg;

    invoke-direct {v0, v1, p3, p2, p1}, Lo/vJ;-><init>(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/tK;Lo/tP;Lo/vh;)V

    .line 336
    new-instance p2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;-><init>(Lo/vh;Lo/vl;Lo/vJ;)V

    .line 337
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->getBitrateEstimate()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 338
    div-long/2addr p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lo/ui;->b:Lo/H;

    invoke-interface {p2}, Lo/H;->d()I

    move-result p2

    int-to-long p2, p2

    :goto_0
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x5aa

    const/16 v3, 0x2a63

    const/4 v4, 0x4

    .line 340
    invoke-static {v3, p1, v4}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Lo/vh;

    aput-object v7, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 341
    sget-object v5, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/predictors/INetflixThroughputPredictor$NetflixThroughputPredictionMediaType;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/predictors/INetflixThroughputPredictor$NetflixThroughputPredictionMediaType;

    const-wide/32 v6, 0xfa00

    :try_start_1
    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v8, p3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v6, 0x2

    aput-object p2, v8, v6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v8, v0

    aput-object v5, v8, v2

    invoke-static {v3, p1, v4}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string p2, "e"

    new-array p4, v4, [Ljava/lang/Class;

    const-class p5, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/predictors/INetflixThroughputPredictor$NetflixThroughputPredictionMediaType;

    aput-object p5, p4, v2

    sget-object p5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object p5, p4, v0

    sget-object p5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object p5, p4, v6

    sget-object p5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object p5, p4, p3

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long p1, p1

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    throw p2

    :cond_1
    throw p1

    :catchall_1
    move-exception p1

    .line 340
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    throw p2

    :cond_2
    throw p1
.end method

.method private e(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            "J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-virtual {p0, p2, p3}, Lo/ui;->e(J)Z

    move-result p2

    .line 298
    iget-object p3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 300
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 301
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 302
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private e(Lo/ui$StateListAnimator;Lo/sE;)V
    .locals 3

    .line 168
    new-instance v0, Lo/uv;

    iget-object v1, p0, Lo/ui;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lo/uv;-><init>(Lo/sE;Landroid/content/Context;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    invoke-virtual {v0}, Lo/uv;->b()Lo/uC;

    move-result-object p2

    .line 170
    invoke-direct {p0, p1, p2}, Lo/ui;->e(Lo/ui$StateListAnimator;Lo/uC;)V

    return-void
.end method

.method private e(Lo/ui$StateListAnimator;Lo/uC;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 175
    iget-object v0, v7, Lo/ui$StateListAnimator;->c:Lo/Ae;

    iget-wide v11, v0, Lo/Ae;->d:J

    .line 177
    iget-object v0, v6, Lo/ui;->d:Lo/tg;

    invoke-virtual/range {p2 .. p2}, Lo/uC;->a()Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v1

    iget-object v2, v7, Lo/ui$StateListAnimator;->c:Lo/Ae;

    iget-object v2, v2, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/tg;->d(Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/String;)Lo/vh;

    move-result-object v8

    .line 178
    new-instance v9, Lo/ui$Activity;

    invoke-virtual/range {p2 .. p2}, Lo/uC;->b()Lo/tL;

    move-result-object v0

    invoke-direct {v9, v0}, Lo/ui$Activity;-><init>(Lo/tL;)V

    .line 179
    new-instance v10, Lo/tX;

    iget-object v0, v6, Lo/ui;->e:Landroid/content/Context;

    iget-object v1, v6, Lo/ui;->f:Lo/vY;

    invoke-virtual/range {p2 .. p2}, Lo/uC;->c()Lo/tZ;

    move-result-object v2

    invoke-direct {v10, v0, v1, v2}, Lo/tX;-><init>(Landroid/content/Context;Lo/vY;Lo/tZ;)V

    .line 180
    invoke-virtual {v10, v9}, Lo/tX;->d(Lo/tP;)V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, p2

    move-wide v4, v11

    .line 181
    invoke-direct/range {v0 .. v5}, Lo/ui;->e(Lo/vh;Lo/tP;Lo/uC;J)J

    move-result-wide v4

    const/4 v0, 0x1

    .line 184
    invoke-virtual {v7, v0}, Lo/ui$StateListAnimator;->c(I)V

    .line 187
    new-instance v13, Lo/tY;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v6, Lo/ui;->f:Lo/vY;

    iget-object v2, v6, Lo/ui;->a:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-direct {v13, v0, v10, v1, v2}, Lo/tY;-><init>(Landroid/content/Context;Lo/tJ;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Lo/uC;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    invoke-virtual {v13, v0, v1, v2, v3}, Lo/tY;->e(JJ)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    .line 189
    invoke-direct/range {v0 .. v5}, Lo/ui;->b(Lo/vh;Lo/uC;Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p2

    .line 190
    invoke-direct {v6, v1}, Lo/ui;->a(Lo/uC;)Ljava/util/List;

    move-result-object v10

    .line 191
    invoke-virtual {v8}, Lo/vh;->ba()I

    move-result v1

    int-to-long v1, v1

    .line 192
    iget-object v3, v7, Lo/ui$StateListAnimator;->c:Lo/Ae;

    iget-object v3, v3, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->c()Z

    move-result v15

    .line 193
    new-instance v3, Lo/ui$2;

    invoke-direct {v3, v6, v7}, Lo/ui$2;-><init>(Lo/ui;Lo/ui$StateListAnimator;)V

    move-object v7, v13

    move-object v8, v9

    move-object v9, v0

    move-wide v13, v1

    move-object/from16 v16, v3

    invoke-virtual/range {v7 .. v16}, Lo/tY;->d(Lo/tP;Ljava/util/List;Ljava/util/List;JJZLo/uj$Activity;)V

    return-void
.end method

.method private e(Lo/ui$StateListAnimator;Z)V
    .locals 0

    .line 216
    invoke-virtual {p1, p2}, Lo/ui$StateListAnimator;->a(Z)I

    move-result p2

    if-nez p2, :cond_1

    .line 217
    invoke-virtual {p1}, Lo/ui$StateListAnimator;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;->d:Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;->a:Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;

    :goto_0
    invoke-virtual {p1, p2}, Lo/ui$StateListAnimator;->a(Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V

    .line 218
    invoke-direct {p0}, Lo/ui;->d()V

    :cond_1
    return-void
.end method

.method static synthetic e(Lo/ui;Lo/ui$StateListAnimator;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lo/ui;->e(Lo/ui$StateListAnimator;Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lo/ui;->j:Ljava/util/Queue;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 101
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 102
    new-instance v2, Lo/ui$StateListAnimator;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Ae;

    if-nez p2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;

    :goto_1
    invoke-direct {v2, v3, v4}, Lo/ui$StateListAnimator;-><init>(Lo/Ae;Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;)V

    .line 103
    iget-object v3, p0, Lo/ui;->j:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    iget-object p1, p0, Lo/ui;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 107
    invoke-direct {p0}, Lo/ui;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 105
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lo/ui;->j:Ljava/util/Queue;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lo/ui;->j:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ui$StateListAnimator;

    .line 121
    iget-object v3, v2, Lo/ui$StateListAnimator;->c:Lo/Ae;

    iget-object v3, v3, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    if-ne v3, p1, :cond_0

    const-string v3, "nf_cache"

    const-string v4, "aborting prefetch request %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 122
    invoke-static {v3, v4, v5}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;->b:Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;

    invoke-virtual {v2, v3}, Lo/ui$StateListAnimator;->a(Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 127
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method protected e(J)Z
    .locals 4

    .line 320
    invoke-static {}, Lo/dS;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 324
    :cond_0
    invoke-static {}, Lo/dS;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v2, 0x200000

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    return v1

    .line 328
    :cond_1
    invoke-static {}, Lo/dS;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/32 v2, 0x100000

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected e(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z
    .locals 1

    .line 313
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 314
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
