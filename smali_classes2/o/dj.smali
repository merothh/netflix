.class public abstract Lo/dj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ds;


# static fields
.field protected static final c:Ljava/lang/String;

.field protected static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field protected static h:Ljava/lang/String;


# instance fields
.field protected a:[B

.field protected b:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Lo/bE;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/dj;->e:Ljava/lang/String;

    .line 77
    invoke-static {}, Lo/bE;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/dj;->c:Ljava/lang/String;

    .line 82
    invoke-static {}, Lo/bE;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/dj;->d:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 159
    invoke-static {p0}, Lo/dj;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ESN"

    const-string v1, "Device ID not found, use and save random id"

    .line 161
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p0}, Lo/dj;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 138
    invoke-static {p0}, Lo/dj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 139
    sget-object v0, Lo/dj;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-class v0, Lo/dj;

    monitor-enter v0

    .line 274
    :try_start_0
    sget-object v1, Lo/dj;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 275
    sget-object p0, Lo/dj;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 278
    :cond_0
    :try_start_1
    invoke-static {p0}, Lo/dj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "UTF-8"

    .line 284
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 285
    invoke-static {}, Lo/bE;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/ads;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/dj;->h:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "ESN"

    const-string v3, "===> Failed to hash device id4. Use plain and report this"

    .line 291
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    sput-object p0, Lo/dj;->h:Ljava/lang/String;

    .line 298
    :goto_0
    sget-object p0, Lo/dj;->h:Ljava/lang/String;

    invoke-static {p0}, Lo/dj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_6

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 312
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 315
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 316
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_4

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 320
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method protected static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lo/dj;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lo/dj;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/dj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/dj;->m:Ljava/lang/String;

    .line 262
    :cond_0
    invoke-static {p1}, Lo/dj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lo/dj;->h:Ljava/lang/String;

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    sget-object v0, Lo/dj;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v0, p0, Lo/dj;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lo/dj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lo/dj;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/dj;->j:Ljava/lang/String;

    return-void
.end method

.method private static declared-synchronized h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lo/dj;

    monitor-enter v0

    :try_start_0
    const-string v1, "nf_rnd_device_id"

    const/4 v2, 0x0

    .line 501
    invoke-static {p0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 503
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_rnd_device_id"

    .line 504
    invoke-static {p0, v2, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private j(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ESN"

    .line 218
    invoke-virtual {p0}, Lo/dj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/dj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/dj;->b:Ljava/lang/String;

    .line 220
    invoke-virtual {p0, p1}, Lo/dj;->e(Landroid/content/Context;)[B

    move-result-object p1

    .line 221
    iput-object p1, p0, Lo/dj;->a:[B

    .line 229
    :try_start_0
    invoke-static {}, Lo/bE;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lo/ads;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "===> Failed to hash device id. Use plain and report this"

    .line 234
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    iget-object p1, p0, Lo/dj;->a:[B

    invoke-static {p1}, Lo/ads;->d([B)Ljava/lang/String;

    move-result-object p1

    .line 238
    :goto_0
    invoke-static {p1}, Lo/dj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    sget-object v2, Lo/dj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v2, p0, Lo/dj;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lo/dj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/dj;->g:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 250
    iget-object v2, p0, Lo/dj;->g:Ljava/lang/String;

    aput-object v2, p1, v1

    const-string v1, "is esn in new scheme:(true) %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    invoke-static {}, Lo/dj;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/dj;->f:Ljava/lang/String;

    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 8

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 342
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BRAND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ESN"

    invoke-static {v4, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MODEL "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    const-string v4, "unknown"

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 349
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_0

    .line 350
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_0
    const-string v1, "_"

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    .line 362
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    rsub-int/lit8 v1, v5, 0x1f

    .line 365
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_2

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 371
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    .line 444
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2d

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 450
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 456
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/dj;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lo/dj;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "S"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 327
    invoke-static {}, Lo/dj;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/dj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static o()Ljava/lang/String;
    .locals 3

    .line 471
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 475
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "       "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 481
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 486
    sget-object v2, Lo/dj;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lo/aev;->d(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lo/dj;->i:Ljava/lang/String;

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lo/dj;->j(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0, p1}, Lo/dj;->g(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p0}, Lo/dj;->m()V

    const/4 v0, 0x0

    const-string v1, "nf_drm_esn"

    .line 188
    invoke-static {p1, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/dj;->k:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lo/dj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lo/dj;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lo/dj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 1

    .line 397
    iget-object v0, p0, Lo/dj;->a:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lo/dj;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract e(Landroid/content/Context;)[B
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Lcom/netflix/mediaclient/util/DeviceCategory;
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lo/dj;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected m()V
    .locals 3

    .line 197
    sget-object v0, Lo/dj;->e:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    sget-object v1, Lo/dj;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/dj;->i:Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_0
    sget-object v0, Lo/dj;->e:Ljava/lang/String;

    iput-object v0, p0, Lo/dj;->i:Ljava/lang/String;

    :goto_0
    return-void
.end method
