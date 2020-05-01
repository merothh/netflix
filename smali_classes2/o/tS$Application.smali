.class public Lo/tS$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tJ$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Application"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field final synthetic b:Lo/tS;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Lo/uj$Activity;

.field private final j:Z


# direct methods
.method public constructor <init>(Lo/tS;Landroid/net/Uri;Ljava/lang/String;JJZLo/uj$Activity;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lo/tS$Application;->b:Lo/tS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p0, Lo/tS$Application;->a:Landroid/net/Uri;

    .line 244
    iput-wide p4, p0, Lo/tS$Application;->c:J

    .line 245
    iput-object p3, p0, Lo/tS$Application;->d:Ljava/lang/String;

    .line 246
    iput-object p9, p0, Lo/tS$Application;->f:Lo/uj$Activity;

    .line 247
    iput-wide p6, p0, Lo/tS$Application;->e:J

    .line 248
    iput-boolean p8, p0, Lo/tS$Application;->j:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    .line 287
    iget-object p1, p0, Lo/tS$Application;->f:Lo/uj$Activity;

    invoke-interface {p1}, Lo/uj$Activity;->c()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/util/List;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 254
    iget-object v1, v0, Lo/tS$Application;->b:Lo/tS;

    iget-object v1, v1, Lo/tS;->b:Lo/ua;

    invoke-virtual {v1}, Lo/ua;->d()I

    move-result v1

    const-string v2, "nf_cache"

    if-gtz v1, :cond_0

    const-string v1, "cache size too low - disabling prefetch"

    .line 256
    invoke-static {v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 260
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, v0, Lo/tS$Application;->c:J

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    .line 261
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, v0, Lo/tS$Application;->e:J

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-gtz v10, :cond_1

    new-array v3, v9, [Ljava/lang/Object;

    .line 263
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "invalid fetch duration %s"

    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 264
    iget-object v1, v0, Lo/tS$Application;->f:Lo/uj$Activity;

    invoke-interface {v1}, Lo/uj$Activity;->c()V

    return-void

    :cond_1
    move-object/from16 v7, p2

    .line 267
    invoke-static {v7, v3, v4, v5, v6}, Lo/tV;->c(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v3

    .line 270
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 271
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/tF;

    .line 272
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/tF;

    .line 273
    invoke-virtual {v4}, Lo/tF;->c()J

    move-result-wide v12

    .line 274
    invoke-virtual {v3}, Lo/tF;->c()J

    move-result-wide v5

    invoke-virtual {v3}, Lo/tF;->g()J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    sub-long v14, v5, v12

    const-wide/16 v10, 0x400

    .line 275
    div-long v10, v14, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v9

    const/4 v1, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/4 v1, 0x3

    invoke-virtual {v4}, Lo/tF;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v1

    const/4 v1, 0x4

    invoke-virtual {v3}, Lo/tF;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x5

    iget-wide v3, v0, Lo/tS$Application;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v1

    const-string v1, "prefetching %s KB (%s-%s) for %s - %s (bookmark=%s)"

    invoke-static {v2, v1, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 276
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v11, v0, Lo/tS$Application;->a:Landroid/net/Uri;

    iget-object v2, v0, Lo/tS$Application;->d:Ljava/lang/String;

    const/high16 v17, 0x40000

    move-object v10, v1

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 277
    iget-object v2, v0, Lo/tS$Application;->b:Lo/tS;

    invoke-static {v2}, Lo/tS;->b(Lo/tS;)Lo/uj;

    move-result-object v2

    iget-boolean v3, v0, Lo/tS$Application;->j:Z

    iget-object v4, v0, Lo/tS$Application;->f:Lo/uj$Activity;

    invoke-virtual {v2, v1, v3, v4}, Lo/uj;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;ZLo/uj$Activity;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v3, v0, Lo/tS$Application;->f:Lo/uj$Activity;

    invoke-interface {v3}, Lo/uj$Activity;->c()V

    new-array v3, v9, [Ljava/lang/Object;

    .line 280
    iget-wide v4, v0, Lo/tS$Application;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "could not find chunk info for %s"

    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
