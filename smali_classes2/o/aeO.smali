.class public Lo/aeO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aeO$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:J

.field private final d:Ljava/io/File;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/aeL$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    const/high16 v0, 0x500000

    const/16 v1, 0x400

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1, v0, v1, v2}, Lo/aeO;-><init>(Ljava/io/File;IIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIZ)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lo/aeO;->e:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lo/aeO;->c:J

    .line 86
    iput-object p1, p0, Lo/aeO;->d:Ljava/io/File;

    .line 87
    iput p2, p0, Lo/aeO;->a:I

    .line 88
    iput-boolean p4, p0, Lo/aeO;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2

    const/high16 v0, 0x500000

    const/16 v1, 0x400

    .line 113
    invoke-direct {p0, p1, v0, v1, p2}, Lo/aeO;-><init>(Ljava/io/File;IIZ)V

    return-void
.end method

.method private b(I)V
    .locals 8

    .line 469
    iget v0, p0, Lo/aeO;->b:I

    if-le p1, v0, :cond_0

    .line 470
    iput p1, p0, Lo/aeO;->b:I

    .line 473
    :cond_0
    invoke-direct {p0, p1}, Lo/aeO;->d(I)Z

    move-result v0

    const-string v1, "nf_log_fs"

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lo/aeO;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "No need to prune oldest entries."

    .line 476
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    const-string v0, "Pruning oldest entries."

    .line 474
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-wide v2, p0, Lo/aeO;->c:J

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 485
    new-instance v2, Lo/aeO$3;

    invoke-direct {v2, p0}, Lo/aeO$3;-><init>(Lo/aeO;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 498
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/aeL$StateListAnimator;

    .line 499
    invoke-interface {v2}, Lo/aeL$StateListAnimator;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lo/aeL$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lo/aeO;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 500
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 501
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 503
    iget-wide v6, p0, Lo/aeO;->c:J

    cmp-long v3, v6, v4

    if-ltz v3, :cond_5

    sub-long/2addr v6, v4

    .line 504
    iput-wide v6, p0, Lo/aeO;->c:J

    goto :goto_1

    .line 507
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_5
    :goto_1
    iget-object v3, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-interface {v2}, Lo/aeL$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-wide v2, p0, Lo/aeO;->c:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget v4, p0, Lo/aeO;->a:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    :cond_6
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 4

    .line 187
    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-static {v0, p1}, Lo/aeR;->a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Lo/aeR;

    invoke-direct {v1, v0, p1}, Lo/aeR;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 194
    iget-object v0, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-wide v2, p0, Lo/aeO;->c:J

    invoke-interface {v1}, Lo/aeL$StateListAnimator;->e()J

    move-result-wide v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/aeO;->c:J

    return-void
.end method

.method private static b(Ljava/io/InputStream;I)[B
    .locals 4

    .line 425
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    .line 428
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    return-object v0

    .line 432
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, read "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 374
    invoke-direct {p0, p1}, Lo/aeO;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 376
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 379
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "nf_log_fs"

    if-nez p1, :cond_1

    .line 382
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 383
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Unable to create profile log directory!"

    .line 385
    invoke-static {v2, p1, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 386
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 390
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 391
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v0, "File %s exists and it is not directory!"

    .line 393
    invoke-static {v2, v0, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 394
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 402
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 405
    :cond_0
    invoke-static {p1}, Lo/ads;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/io/File;Z)V
    .locals 5

    .line 341
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 345
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 346
    invoke-direct {p0, v3, v4}, Lo/aeO;->c(Ljava/io/File;Z)V

    goto :goto_1

    .line 348
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 357
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method private c(I)Z
    .locals 7

    .line 543
    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-static {v0}, Lo/adE;->g(Ljava/io/File;)J

    move-result-wide v0

    int-to-long v2, p1

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 547
    iget-wide v5, p0, Lo/aeO;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, p1

    const/4 p1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "nf_log_fs"

    const-string v0, "Used space %d in bytes. Need to prune based on not having enough space (%d in bytes) on device: %b"

    invoke-static {p1, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2
.end method

.method private d(Ljava/io/File;)I
    .locals 5

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 163
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v3, p1, v0

    if-eqz v3, :cond_2

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    invoke-direct {p0, v3}, Lo/aeO;->d(Ljava/io/File;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 176
    :cond_1
    invoke-direct {p0, v3}, Lo/aeO;->b(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private declared-synchronized d(Ljava/lang/String;[BLjava/lang/String;Lo/aeL$TaskDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 214
    :try_start_0
    array-length v0, p2

    invoke-direct {p0, v0}, Lo/aeO;->b(I)V

    .line 216
    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-static {v0}, Lo/adE;->g(Ljava/io/File;)J

    move-result-wide v0

    .line 217
    array-length v2, p2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-string v2, "nf_log_fs"

    const-string v3, "Even after pruning, we may NOT have enough space available. Free space: %d vs entry space %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 220
    :cond_0
    invoke-static {p1, p5}, Lo/aeR;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-direct {p0, p3, p1}, Lo/aeO;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :try_start_1
    invoke-static {p5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p5

    .line 225
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 226
    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 227
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 228
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 229
    new-instance p2, Lo/aeR;

    invoke-direct {p2, p3, p1}, Lo/aeR;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 230
    iget-object p3, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-wide v0, p0, Lo/aeO;->c:J

    invoke-interface {p2}, Lo/aeL$StateListAnimator;->e()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/aeO;->c:J

    if-eqz p4, :cond_1

    .line 233
    invoke-interface {p2}, Lo/aeL$StateListAnimator;->a()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lo/aeL$TaskDescription;->a(Ljava/lang/String;)V

    .line 235
    :cond_1
    invoke-interface {p2}, Lo/aeL$StateListAnimator;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p2

    :try_start_2
    const-string p3, "nf_log_fs"

    const-string p5, "Failed to save data to file system!"

    .line 237
    invoke-static {p3, p5, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "nf_log_fs"

    .line 241
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to save data. Could not clean up file "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    if-eqz p4, :cond_3

    .line 245
    invoke-interface {p4, p1}, Lo/aeL$TaskDescription;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(I)Z
    .locals 6

    .line 530
    iget-wide v0, p0, Lo/aeO;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p1, p0, Lo/aeO;->a:I

    int-to-long v2, p1

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array p1, p1, [Ljava/lang/Object;

    .line 531
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "nf_log_fs"

    const-string v2, "Need to prune based on using too much space: %b"

    invoke-static {v1, v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lo/aeL$Application;)V
    .locals 10

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aeL$StateListAnimator;

    if-nez v0, :cond_1

    const-string v0, "nf_log_fs"

    const-string v1, "Entry not found!"

    .line 261
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    .line 263
    invoke-interface/range {v2 .. v7}, Lo/aeL$Application;->a(Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 265
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "nf_log_fs"

    const-string v2, "Entry found!"

    .line 268
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-interface {v0}, Lo/aeL$StateListAnimator;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lo/aeO;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    .line 272
    :try_start_2
    new-instance v3, Lo/aeO$TaskDescription;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v2}, Lo/aeO$TaskDescription;-><init>(Ljava/io/InputStream;Lo/aeO$3;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 273
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v3}, Lo/aeO$TaskDescription;->e(Lo/aeO$TaskDescription;)I

    move-result v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    long-to-int v2, v4

    invoke-static {v3, v2}, Lo/aeO;->b(Ljava/io/InputStream;I)[B

    move-result-object v7

    if-eqz p2, :cond_2

    .line 275
    invoke-interface {v0}, Lo/aeL$StateListAnimator;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    move-object v4, p2

    move-object v5, p1

    invoke-interface/range {v4 .. v9}, Lo/aeL$Application;->a(Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Lo/aeO$TaskDescription;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 277
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_0
    :try_start_5
    const-string v3, "nf_log_fs"

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Failed to load file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    invoke-virtual {p0, p1}, Lo/aeO;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    .line 284
    :try_start_6
    invoke-virtual {v2}, Lo/aeO$TaskDescription;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_3
    nop

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    .line 291
    :try_start_7
    invoke-interface/range {v0 .. v5}, Lo/aeL$Application;->a(Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 293
    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    if-eqz v2, :cond_5

    .line 284
    :try_start_8
    invoke-virtual {v2}, Lo/aeO$TaskDescription;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 288
    :catch_4
    :cond_5
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/aeO;->c(Ljava/io/File;Z)V

    .line 334
    iget-object v0, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 335
    iput-wide v0, p0, Lo/aeO;->c:J

    const-string v0, "nf_log_fs"

    const-string v1, "Cache cleared."

    .line 336
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aeL$StateListAnimator;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lo/aeL$StateListAnimator;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lo/aeO;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 317
    iget-wide v1, p0, Lo/aeO;->c:J

    invoke-interface {v0}, Lo/aeL$StateListAnimator;->e()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 318
    iget-wide v1, p0, Lo/aeO;->c:J

    invoke-interface {v0}, Lo/aeL$StateListAnimator;->e()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lo/aeO;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;[BLjava/lang/String;Lo/aeL$TaskDescription;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 210
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lo/aeO;->d(Ljava/lang/String;[BLjava/lang/String;Lo/aeL$TaskDescription;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lo/aeL$ActionBar;)V
    .locals 3

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nf_log_fs"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create cache dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 130
    invoke-interface {p1, v0}, Lo/aeL$ActionBar;->d([Lo/aeL$StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    .line 135
    :try_start_1
    iput-wide v0, p0, Lo/aeO;->c:J

    .line 137
    iget-object v0, p0, Lo/aeO;->d:Ljava/io/File;

    invoke-direct {p0, v0}, Lo/aeO;->d(Ljava/io/File;)I

    if-eqz p1, :cond_3

    .line 144
    iget-object v0, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lo/aeL$StateListAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/aeL$StateListAnimator;

    invoke-interface {p1, v0}, Lo/aeL$ActionBar;->d([Lo/aeL$StateListAnimator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 205
    invoke-direct/range {v0 .. v5}, Lo/aeO;->d(Ljava/lang/String;[BLjava/lang/String;Lo/aeL$TaskDescription;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized d()[Lo/aeL$StateListAnimator;
    .locals 2

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lo/aeO;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lo/aeL$StateListAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/aeL$StateListAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 200
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lo/aeO;->d(Ljava/lang/String;[BLjava/lang/String;Lo/aeL$TaskDescription;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
