.class public Lo/BackupTransport;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:Lo/FileBackupHelper;

.field private final c:[B

.field private d:Ljava/nio/ByteBuffer;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 121
    iput-object v0, p0, Lo/BackupTransport;->c:[B

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lo/BackupTransport;->e:I

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lo/BackupTransport;->c:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 153
    new-instance v0, Lo/FileBackupHelper;

    invoke-direct {v0}, Lo/FileBackupHelper;-><init>()V

    iput-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    .line 154
    iput v1, p0, Lo/BackupTransport;->e:I

    return-void
.end method

.method private c()V
    .locals 1

    const v0, 0x7fffffff

    .line 193
    invoke-direct {p0, v0}, Lo/BackupTransport;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_a

    .line 202
    invoke-direct {p0}, Lo/BackupTransport;->l()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget v2, v2, Lo/FileBackupHelper;->c:I

    if-gt v2, p1, :cond_a

    .line 203
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    .line 254
    iget-object v2, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iput v4, v2, Lo/FileBackupHelper;->e:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget-object v2, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v2, v2, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    if-nez v2, :cond_2

    .line 211
    iget-object v2, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    new-instance v3, Lo/BackupHelperDispatcher;

    invoke-direct {v3}, Lo/BackupHelperDispatcher;-><init>()V

    iput-object v3, v2, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    .line 213
    :cond_2
    invoke-direct {p0}, Lo/BackupTransport;->j()V

    goto :goto_0

    .line 216
    :cond_3
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    .line 244
    invoke-direct {p0}, Lo/BackupTransport;->k()V

    goto :goto_0

    .line 224
    :cond_4
    invoke-direct {p0}, Lo/BackupTransport;->n()V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    .line 227
    iget-object v4, p0, Lo/BackupTransport;->c:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 229
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 230
    invoke-direct {p0}, Lo/BackupTransport;->g()V

    goto :goto_0

    .line 233
    :cond_6
    invoke-direct {p0}, Lo/BackupTransport;->k()V

    goto :goto_0

    .line 237
    :cond_7
    invoke-direct {p0}, Lo/BackupTransport;->k()V

    goto :goto_0

    .line 220
    :cond_8
    iget-object v2, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    new-instance v3, Lo/BackupHelperDispatcher;

    invoke-direct {v3}, Lo/BackupHelperDispatcher;-><init>()V

    iput-object v3, v2, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    .line 221
    invoke-direct {p0}, Lo/BackupTransport;->e()V

    goto/16 :goto_0

    .line 240
    :cond_9
    invoke-direct {p0}, Lo/BackupTransport;->k()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private e()V
    .locals 4

    .line 264
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    .line 276
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v0

    .line 279
    iget-object v1, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v1, v1, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lo/BackupHelperDispatcher;->h:I

    .line 280
    iget-object v1, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v1, v1, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    iget v1, v1, Lo/BackupHelperDispatcher;->h:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v1, v1, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    iput v2, v1, Lo/BackupHelperDispatcher;->h:I

    .line 284
    :cond_0
    iget-object v1, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v1, v1, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lo/BackupHelperDispatcher;->j:Z

    .line 286
    invoke-direct {p0}, Lo/BackupTransport;->m()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    const/16 v0, 0xa

    .line 291
    :cond_2
    iget-object v2, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v2, v2, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v2, Lo/BackupHelperDispatcher;->g:I

    .line 293
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v0, v0, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v1

    iput v1, v0, Lo/BackupHelperDispatcher;->f:I

    .line 295
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    return-void
.end method

.method private e(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    .line 418
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 421
    :try_start_0
    iget-object v2, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 429
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 430
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 431
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 432
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GifHeaderParser"

    const/4 v2, 0x3

    .line 435
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Format Error Reading Color Table"

    .line 436
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    :cond_0
    iget-object p1, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    const/4 v0, 0x1

    iput v0, p1, Lo/FileBackupHelper;->e:I

    :cond_1
    return-object v1
.end method

.method private f()V
    .locals 3

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 368
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    const/4 v1, 0x1

    iput v1, v0, Lo/FileBackupHelper;->e:I

    return-void

    .line 374
    :cond_1
    invoke-direct {p0}, Lo/BackupTransport;->h()V

    .line 375
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-boolean v0, v0, Lo/FileBackupHelper;->j:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lo/BackupTransport;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget v1, v0, Lo/FileBackupHelper;->h:I

    invoke-direct {p0, v1}, Lo/BackupTransport;->e(I)[I

    move-result-object v1

    iput-object v1, v0, Lo/FileBackupHelper;->a:[I

    .line 377
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v1, v0, Lo/FileBackupHelper;->a:[I

    iget-object v2, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget v2, v2, Lo/FileBackupHelper;->i:I

    aget v1, v1, v2

    iput v1, v0, Lo/FileBackupHelper;->o:I

    :cond_2
    return-void
.end method

.method private g()V
    .locals 3

    .line 351
    :cond_0
    invoke-direct {p0}, Lo/BackupTransport;->n()V

    .line 352
    iget-object v0, p0, Lo/BackupTransport;->c:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 354
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 355
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 356
    iget-object v2, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lo/FileBackupHelper;->n:I

    .line 358
    :cond_1
    iget v0, p0, Lo/BackupTransport;->e:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lo/BackupTransport;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private h()V
    .locals 6

    .line 386
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    invoke-direct {p0}, Lo/BackupTransport;->m()I

    move-result v1

    iput v1, v0, Lo/FileBackupHelper;->g:I

    .line 387
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    invoke-direct {p0}, Lo/BackupTransport;->m()I

    move-result v1

    iput v1, v0, Lo/FileBackupHelper;->f:I

    .line 399
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v0

    .line 400
    iget-object v1, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lo/FileBackupHelper;->j:Z

    .line 401
    iget-object v1, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    int-to-double v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lo/FileBackupHelper;->h:I

    .line 403
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v1

    iput v1, v0, Lo/FileBackupHelper;->i:I

    .line 405
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v1

    iput v1, v0, Lo/FileBackupHelper;->l:I

    return-void
.end method

.method private i()V
    .locals 0

    .line 449
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    .line 451
    invoke-direct {p0}, Lo/BackupTransport;->k()V

    return-void
.end method

.method private j()V
    .locals 8

    .line 303
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v0, v0, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    invoke-direct {p0}, Lo/BackupTransport;->m()I

    move-result v1

    iput v1, v0, Lo/BackupHelperDispatcher;->b:I

    .line 304
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v0, v0, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    invoke-direct {p0}, Lo/BackupTransport;->m()I

    move-result v1

    iput v1, v0, Lo/BackupHelperDispatcher;->c:I

    .line 305
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v0, v0, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    invoke-direct {p0}, Lo/BackupTransport;->m()I

    move-result v1

    iput v1, v0, Lo/BackupHelperDispatcher;->e:I

    .line 306
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v0, v0, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    invoke-direct {p0}, Lo/BackupTransport;->m()I

    move-result v1

    iput v1, v0, Lo/BackupHelperDispatcher;->a:I

    .line 320
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    .line 322
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 323
    iget-object v5, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v5, v5, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v5, Lo/BackupHelperDispatcher;->d:Z

    if-eqz v1, :cond_2

    .line 325
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v0, v0, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    invoke-direct {p0, v4}, Lo/BackupTransport;->e(I)[I

    move-result-object v1

    iput-object v1, v0, Lo/BackupHelperDispatcher;->m:[I

    goto :goto_1

    .line 328
    :cond_2
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v0, v0, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/BackupHelperDispatcher;->m:[I

    .line 332
    :goto_1
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v0, v0, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    iget-object v1, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lo/BackupHelperDispatcher;->i:I

    .line 335
    invoke-direct {p0}, Lo/BackupTransport;->i()V

    .line 337
    invoke-direct {p0}, Lo/BackupTransport;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 341
    :cond_3
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget v1, v0, Lo/FileBackupHelper;->c:I

    add-int/2addr v1, v3

    iput v1, v0, Lo/FileBackupHelper;->c:I

    .line 343
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v0, v0, Lo/FileBackupHelper;->d:Ljava/util/List;

    iget-object v1, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget-object v1, v1, Lo/FileBackupHelper;->b:Lo/BackupHelperDispatcher;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private k()V
    .locals 3

    .line 460
    :cond_0
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v0

    .line 461
    iget-object v1, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 462
    iget-object v2, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private l()Z
    .locals 1

    .line 513
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget v0, v0, Lo/FileBackupHelper;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()I
    .locals 1

    .line 509
    iget-object v0, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private n()V
    .locals 6

    .line 470
    invoke-direct {p0}, Lo/BackupTransport;->o()I

    move-result v0

    iput v0, p0, Lo/BackupTransport;->e:I

    .line 472
    iget v0, p0, Lo/BackupTransport;->e:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 475
    :goto_0
    :try_start_0
    iget v2, p0, Lo/BackupTransport;->e:I

    if-ge v0, v2, :cond_1

    .line 476
    iget v1, p0, Lo/BackupTransport;->e:I

    sub-int/2addr v1, v0

    .line 477
    iget-object v2, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lo/BackupTransport;->c:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    .line 482
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " count: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo/BackupTransport;->e:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    :cond_0
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    const/4 v1, 0x1

    iput v1, v0, Lo/FileBackupHelper;->e:I

    :cond_1
    return-void
.end method

.method private o()I
    .locals 2

    .line 497
    :try_start_0
    iget-object v0, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 499
    :catch_0
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    const/4 v1, 0x1

    iput v1, v0, Lo/FileBackupHelper;->e:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lo/BackupTransport;
    .locals 1

    .line 128
    invoke-direct {p0}, Lo/BackupTransport;->b()V

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    .line 130
    iget-object p1, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    iget-object p1, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    .line 147
    iput-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    return-void
.end method

.method public d()Lo/FileBackupHelper;
    .locals 2

    .line 159
    iget-object v0, p0, Lo/BackupTransport;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 162
    invoke-direct {p0}, Lo/BackupTransport;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    return-object v0

    .line 166
    :cond_0
    invoke-direct {p0}, Lo/BackupTransport;->f()V

    .line 167
    invoke-direct {p0}, Lo/BackupTransport;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-direct {p0}, Lo/BackupTransport;->c()V

    .line 169
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    iget v0, v0, Lo/FileBackupHelper;->c:I

    if-gez v0, :cond_1

    .line 170
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    const/4 v1, 0x1

    iput v1, v0, Lo/FileBackupHelper;->e:I

    .line 174
    :cond_1
    iget-object v0, p0, Lo/BackupTransport;->b:Lo/FileBackupHelper;

    return-object v0

    .line 160
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
