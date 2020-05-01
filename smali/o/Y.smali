.class public Lo/Y;
.super Ljava/net/HttpURLConnection;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Y$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lo/X;

.field private final c:Lorg/chromium/net/CronetEngine;

.field private d:Lorg/chromium/net/UrlRequest;

.field private e:Lo/W;

.field private f:Z

.field private g:Lorg/chromium/net/UrlResponseInfo;

.field private h:Lo/Z;

.field private i:Ljava/io/IOException;

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/URL;Lorg/chromium/net/CronetEngine;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Y;->k:Ljava/util/List;

    const/4 p1, 0x3

    .line 62
    iput p1, p0, Lo/Y;->l:I

    .line 66
    iput-object p2, p0, Lo/Y;->c:Lorg/chromium/net/CronetEngine;

    .line 67
    new-instance p1, Lo/X;

    invoke-direct {p1}, Lo/X;-><init>()V

    iput-object p1, p0, Lo/Y;->b:Lo/X;

    .line 68
    new-instance p1, Lo/W;

    invoke-direct {p1, p0}, Lo/W;-><init>(Lo/Y;)V

    iput-object p1, p0, Lo/Y;->e:Lo/W;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Y;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lo/Y;)Lorg/chromium/net/UrlRequest;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/Y;->d:Lorg/chromium/net/UrlRequest;

    return-object p0
.end method

.method static synthetic a(Lo/Y;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lo/Y;->f:Z

    return p1
.end method

.method static synthetic b(Lo/Y;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/Y;->g:Lorg/chromium/net/UrlResponseInfo;

    return-object p1
.end method

.method private b()V
    .locals 2

    .line 570
    iget-boolean v0, p0, Lo/Y;->f:Z

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lo/Y;->i:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lo/Y;->g:Lorg/chromium/net/UrlResponseInfo;

    if-eqz v0, :cond_0

    return-void

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Response info is null when there is no exception."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1
    throw v0

    .line 570
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lo/Y;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lo/Y;->instanceFollowRedirects:Z

    return p0
.end method

.method static synthetic c(Lo/Y;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/Y;->url:Ljava/net/URL;

    return-object p1
.end method

.method private c()V
    .locals 5

    .line 262
    iget-boolean v0, p0, Lo/Y;->connected:Z

    if-eqz v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lo/Y;->c:Lorg/chromium/net/CronetEngine;

    .line 267
    invoke-virtual {p0}, Lo/Y;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/Y$ActionBar;

    invoke-direct {v2, p0}, Lo/Y$ActionBar;-><init>(Lo/Y;)V

    iget-object v3, p0, Lo/Y;->b:Lo/X;

    .line 266
    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    .line 268
    iget-boolean v1, p0, Lo/Y;->doOutput:Z

    if-eqz v1, :cond_5

    .line 269
    iget-object v1, p0, Lo/Y;->method:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "POST"

    .line 270
    iput-object v1, p0, Lo/Y;->method:Ljava/lang/String;

    .line 272
    :cond_1
    iget-object v1, p0, Lo/Y;->h:Lo/Z;

    const-string v2, "Content-Length"

    if-eqz v1, :cond_3

    .line 274
    invoke-virtual {v1}, Lo/Z;->e()Lorg/chromium/net/UploadDataProvider;

    move-result-object v1

    iget-object v3, p0, Lo/Y;->b:Lo/X;

    .line 273
    invoke-virtual {v0, v1, v3}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    .line 275
    invoke-virtual {p0, v2}, Lo/Y;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lo/Y;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    iget-object v1, p0, Lo/Y;->h:Lo/Z;

    .line 277
    invoke-virtual {v1}, Lo/Z;->e()Lorg/chromium/net/UploadDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/net/UploadDataProvider;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p0, v2, v1}, Lo/Y;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_2
    iget-object v1, p0, Lo/Y;->h:Lo/Z;

    invoke-virtual {v1}, Lo/Z;->d()V

    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {p0, v2}, Lo/Y;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "0"

    .line 284
    invoke-virtual {p0, v2, v1}, Lo/Y;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string v1, "Content-Type"

    .line 288
    invoke-virtual {p0, v1}, Lo/Y;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "application/x-www-form-urlencoded"

    .line 289
    invoke-virtual {p0, v1, v2}, Lo/Y;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_5
    iget-object v1, p0, Lo/Y;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 294
    invoke-virtual {v0, v2}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->addRequestAnnotation(Ljava/lang/Object;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    goto :goto_1

    .line 296
    :cond_6
    iget v1, p0, Lo/Y;->l:I

    invoke-virtual {v0, v1}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->setPriority(I)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    .line 297
    iget-object v1, p0, Lo/Y;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 298
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    goto :goto_2

    .line 300
    :cond_7
    invoke-virtual {p0}, Lo/Y;->getUseCaches()Z

    move-result v1

    if-nez v1, :cond_8

    .line 301
    invoke-virtual {v0}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->disableCache()Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    .line 304
    :cond_8
    iget-object v1, p0, Lo/Y;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    .line 312
    invoke-virtual {v0}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->build()Lorg/chromium/net/ExperimentalUrlRequest;

    move-result-object v0

    iput-object v0, p0, Lo/Y;->d:Lorg/chromium/net/UrlRequest;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0}, Lo/Y;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "nf_network"

    const-string v3, "--> %s"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 315
    iget-object v1, p0, Lo/Y;->d:Lorg/chromium/net/UrlRequest;

    invoke-virtual {v1}, Lorg/chromium/net/UrlRequest;->start()V

    .line 316
    iput-boolean v0, p0, Lo/Y;->connected:Z

    return-void
.end method

.method static synthetic c(Lo/Y;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lo/Y;->instanceFollowRedirects:Z

    return p0
.end method

.method private d(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 448
    :goto_0
    iget-object v1, p0, Lo/Y;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 449
    iget-object v1, p0, Lo/Y;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 450
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private d()J
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 242
    iget v0, p0, Lo/Y;->fixedContentLength:I

    int-to-long v0, v0

    .line 246
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "fixedContentLengthLong"

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    move-wide v0, v2

    :catch_0
    :cond_0
    return-wide v0
.end method

.method static synthetic d(Lo/Y;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/Y;->i:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic d(Lo/Y;)Lo/X;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/Y;->b:Lo/X;

    return-object p0
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 354
    iget-boolean v0, p0, Lo/Y;->connected:Z

    if-nez v0, :cond_2

    .line 358
    invoke-direct {p0, p1}, Lo/Y;->d(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz p3, :cond_0

    .line 361
    iget-object p3, p0, Lo/Y;->a:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 365
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot add multiple headers of the same key, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". crbug.com/432719."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 371
    :cond_1
    :goto_0
    iget-object p3, p0, Lo/Y;->a:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 355
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot modify request property after connection is made."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic d(Lo/Y;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lo/Y;->j:Z

    return p1
.end method

.method static synthetic e(Lo/Y;)Ljava/net/URL;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/Y;->url:Ljava/net/URL;

    return-object p0
.end method

.method private e(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 584
    :try_start_0
    invoke-direct {p0}, Lo/Y;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    invoke-direct {p0}, Lo/Y;->i()Ljava/util/List;

    move-result-object v1

    .line 589
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    return-object v0

    .line 592
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1

    :catch_0
    return-object v0
.end method

.method private e()V
    .locals 1

    .line 549
    iget-object v0, p0, Lo/Y;->h:Lo/Z;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Lo/Z;->b()V

    .line 551
    invoke-direct {p0}, Lo/Y;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lo/Y;->h:Lo/Z;

    invoke-virtual {v0}, Lo/Z;->close()V

    .line 556
    :cond_0
    iget-boolean v0, p0, Lo/Y;->f:Z

    if-nez v0, :cond_1

    .line 557
    invoke-direct {p0}, Lo/Y;->c()V

    .line 559
    iget-object v0, p0, Lo/Y;->b:Lo/X;

    invoke-virtual {v0}, Lo/X;->e()V

    .line 561
    :cond_1
    invoke-direct {p0}, Lo/Y;->b()V

    return-void
.end method

.method static synthetic f(Lo/Y;)Ljava/net/URL;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/Y;->url:Ljava/net/URL;

    return-object p0
.end method

.method private f()Z
    .locals 1

    .line 600
    iget v0, p0, Lo/Y;->chunkLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic g(Lo/Y;)Lo/W;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/Y;->e:Lo/W;

    return-object p0
.end method

.method static synthetic h(Lo/Y;)Ljava/net/URL;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/Y;->url:Ljava/net/URL;

    return-object p0
.end method

.method private h()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lo/Y;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    .line 608
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 609
    invoke-direct {p0}, Lo/Y;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 610
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 612
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 614
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 617
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/Y;->n:Ljava/util/Map;

    .line 618
    iget-object v0, p0, Lo/Y;->n:Ljava/util/Map;

    return-object v0
.end method

.method private i()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lo/Y;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 625
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Y;->o:Ljava/util/List;

    .line 626
    iget-object v0, p0, Lo/Y;->g:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 628
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 629
    iget-object v2, p0, Lo/Y;->o:Ljava/util/List;

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    :cond_2
    iget-object v0, p0, Lo/Y;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/Y;->o:Ljava/util/List;

    .line 634
    iget-object v0, p0, Lo/Y;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lo/Y;)Lo/Z;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/Y;->h:Lo/Z;

    return-object p0
.end method


# virtual methods
.method public a()Lo/ExitTransitionCoordinator;
    .locals 7

    .line 647
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 650
    :goto_0
    iget-object v2, p0, Lo/Y;->e:Lo/W;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lo/W;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 651
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 653
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 654
    iget-object v1, p0, Lo/Y;->g:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v1

    .line 655
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 656
    iget-object v3, p0, Lo/Y;->g:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v3}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 657
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 659
    :cond_1
    new-instance v3, Lo/ExitTransitionCoordinator;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v1, v0, v2, v4}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V

    return-object v3
.end method

.method public a(I)V
    .locals 0

    .line 643
    iput p1, p0, Lo/Y;->l:I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 639
    iget-object v0, p0, Lo/Y;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, p1, p2, v0}, Lo/Y;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public connect()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lo/Y;->getOutputStream()Ljava/io/OutputStream;

    .line 82
    invoke-direct {p0}, Lo/Y;->c()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lo/Y;->connected:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lo/Y;->d:Lorg/chromium/net/UrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    :cond_0
    return-void
.end method

.method e(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lo/Y;->d:Lorg/chromium/net/UrlRequest;

    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    .line 440
    iget-object p1, p0, Lo/Y;->b:Lo/X;

    invoke-virtual {p0}, Lo/Y;->getReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/X;->a(I)V

    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    .line 326
    :try_start_0
    invoke-direct {p0}, Lo/Y;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    iget-object v1, p0, Lo/Y;->g:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    .line 331
    iget-object v0, p0, Lo/Y;->e:Lo/W;

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lo/Y;->e(I)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 171
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-direct {p0}, Lo/Y;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-direct {p0}, Lo/Y;->h()Ljava/util/Map;

    move-result-object v1

    .line 141
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 144
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :catch_0
    return-object v0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lo/Y;->e(I)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 158
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 121
    :try_start_0
    invoke-direct {p0}, Lo/Y;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-direct {p0}, Lo/Y;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 123
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 183
    invoke-direct {p0}, Lo/Y;->e()V

    .line 184
    iget-boolean v0, p0, Lo/Y;->instanceFollowRedirects:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/Y;->j:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read response body of a redirect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/Y;->g:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_2

    .line 192
    iget-object v0, p0, Lo/Y;->e:Lo/W;

    return-object v0

    .line 190
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lo/Y;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 5

    .line 201
    iget-object v0, p0, Lo/Y;->h:Lo/Z;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lo/Y;->doOutput:Z

    if-eqz v0, :cond_4

    .line 202
    iget-boolean v0, p0, Lo/Y;->connected:Z

    if-nez v0, :cond_3

    .line 206
    invoke-direct {p0}, Lo/Y;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lo/U;

    iget v1, p0, Lo/Y;->chunkLength:I

    iget-object v2, p0, Lo/Y;->b:Lo/X;

    invoke-direct {v0, p0, v1, v2}, Lo/U;-><init>(Lo/Y;ILo/X;)V

    iput-object v0, p0, Lo/Y;->h:Lo/Z;

    .line 209
    invoke-direct {p0}, Lo/Y;->c()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0}, Lo/Y;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 213
    new-instance v2, Lo/R;

    iget-object v3, p0, Lo/Y;->b:Lo/X;

    invoke-direct {v2, p0, v0, v1, v3}, Lo/R;-><init>(Lo/Y;JLo/X;)V

    iput-object v2, p0, Lo/Y;->h:Lo/Z;

    .line 216
    invoke-direct {p0}, Lo/Y;->c()V

    goto :goto_0

    :cond_1
    const-string v0, "nf_network"

    const-string v1, "Outputstream is being buffered in memory."

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Content-Length"

    .line 222
    invoke-virtual {p0, v0}, Lo/Y;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 224
    new-instance v0, Lo/Q;

    invoke-direct {v0, p0}, Lo/Q;-><init>(Lo/Y;)V

    iput-object v0, p0, Lo/Y;->h:Lo/Z;

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 227
    new-instance v2, Lo/Q;

    invoke-direct {v2, p0, v0, v1}, Lo/Q;-><init>(Lo/Y;J)V

    iput-object v2, p0, Lo/Y;->h:Lo/Z;

    goto :goto_0

    .line 203
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Cannot write to OutputStream after receiving response."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_4
    :goto_0
    iget-object v0, p0, Lo/Y;->h:Lo/Z;

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 380
    iget-boolean v0, p0, Lo/Y;->connected:Z

    if-nez v0, :cond_2

    .line 384
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 386
    iget-object v1, p0, Lo/Y;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 387
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 392
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 393
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not have multiple values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 381
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request headers after connection is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 406
    invoke-direct {p0, p1}, Lo/Y;->d(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 408
    iget-object v0, p0, Lo/Y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResponseCode()I
    .locals 1

    .line 111
    invoke-direct {p0}, Lo/Y;->e()V

    .line 112
    iget-object v0, p0, Lo/Y;->g:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-direct {p0}, Lo/Y;->e()V

    .line 103
    iget-object v0, p0, Lo/Y;->g:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 1

    const-string p1, "nf_network"

    const-string v0, "setConnectTimeout is not supported by CronetHttpURLConnection"

    .line 428
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 349
    invoke-direct {p0, p1, p2, v0}, Lo/Y;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public usingProxy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
