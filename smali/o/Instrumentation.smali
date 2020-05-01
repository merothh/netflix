.class public Lo/Instrumentation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DownloadManager;


# static fields
.field private static b:I = 0xbb8

.field private static c:I = 0x1000


# instance fields
.field protected final a:Lo/ListActivity;

.field protected final d:Lo/InstantAppResolverService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/ListActivity;)V
    .locals 2

    .line 77
    new-instance v0, Lo/InstantAppResolverService;

    sget v1, Lo/Instrumentation;->c:I

    invoke-direct {v0, v1}, Lo/InstantAppResolverService;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lo/Instrumentation;-><init>(Lo/ListActivity;Lo/InstantAppResolverService;)V

    return-void
.end method

.method public constructor <init>(Lo/ListActivity;Lo/InstantAppResolverService;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lo/Instrumentation;->a:Lo/ListActivity;

    .line 86
    iput-object p2, p0, Lo/Instrumentation;->d:Lo/InstantAppResolverService;

    return-void
.end method

.method private static a(Lcom/android/volley/Request;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 240
    invoke-static {}, Lo/PidHealthStats;->b()Lo/PidHealthStats;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/PidHealthStats;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 336
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 337
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Lcom/android/volley/Request;->A()Lo/FragmentController;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/android/volley/Request;->C()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 268
    :try_start_0
    invoke-interface {v0, p2}, Lo/FragmentController;->b(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 272
    throw p2
.end method

.method private b(Ljava/util/Map;Lo/ContextImpl$StateListAnimator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lo/ContextImpl$StateListAnimator;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p2, Lo/ContextImpl$StateListAnimator;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p2, Lo/ContextImpl$StateListAnimator;->e:Ljava/lang/String;

    const-string v1, "If-None-Match"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_1
    iget-wide v0, p2, Lo/ContextImpl$StateListAnimator;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 288
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lo/ContextImpl$StateListAnimator;->b:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 289
    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "If-Modified-Since"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private c(Lorg/apache/http/HttpEntity;)[B
    .locals 7

    const-string v0, "Error occured when calling consumingContent"

    .line 300
    new-instance v1, Lo/MediaRouteButton;

    iget-object v2, p0, Lo/Instrumentation;->d:Lo/InstantAppResolverService;

    .line 301
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-direct {v1, v2, v4}, Lo/MediaRouteButton;-><init>(Lo/InstantAppResolverService;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 304
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 310
    iget-object v5, p0, Lo/Instrumentation;->d:Lo/InstantAppResolverService;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lo/InstantAppResolverService;->c(I)[B

    move-result-object v3

    .line 312
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 313
    invoke-virtual {v1, v3, v2, v5}, Lo/MediaRouteButton;->write([BII)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {v1}, Lo/MediaRouteButton;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 323
    invoke-static {v0, p1}, Lo/FragmentContainer;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :goto_1
    iget-object p1, p0, Lo/Instrumentation;->d:Lo/InstantAppResolverService;

    invoke-virtual {p1, v3}, Lo/InstantAppResolverService;->c([B)V

    .line 326
    invoke-virtual {v1}, Lo/MediaRouteButton;->close()V

    return-object v4

    .line 306
    :cond_1
    :try_start_2
    new-instance v4, Lcom/android/volley/ServerError;

    invoke-direct {v4}, Lcom/android/volley/ServerError;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    .line 319
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 323
    invoke-static {v0, p1}, Lo/FragmentContainer;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :goto_2
    iget-object p1, p0, Lo/Instrumentation;->d:Lo/InstantAppResolverService;

    invoke-virtual {p1, v3}, Lo/InstantAppResolverService;->c([B)V

    .line 326
    invoke-virtual {v1}, Lo/MediaRouteButton;->close()V

    .line 327
    throw v4
.end method

.method private e(JLcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lorg/apache/http/StatusLine;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lo/ExitTransitionCoordinator;",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    .line 230
    sget v0, Lo/Instrumentation;->b:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 232
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    if-eqz p4, :cond_0

    iget-object p2, p4, Lo/ExitTransitionCoordinator;->c:[B

    if-eqz p2, :cond_0

    iget-object p2, p4, Lo/ExitTransitionCoordinator;->c:[B

    array-length p2, p2

    .line 234
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "null"

    :goto_0
    aput-object p2, v0, p1

    const/4 p1, 0x3

    .line 235
    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    invoke-virtual {p3}, Lcom/android/volley/Request;->A()Lo/FragmentController;

    move-result-object p2

    invoke-interface {p2}, Lo/FragmentController;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 231
    invoke-static {p1, v0}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static e(Lcom/android/volley/Request;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;IJ)V"
        }
    .end annotation

    .line 245
    :try_start_0
    invoke-static {p0}, Lo/Instrumentation;->a(Lcom/android/volley/Request;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 247
    invoke-static {}, Lo/PidHealthStats;->b()Lo/PidHealthStats;

    move-result-object v0

    const-string v1, "duration"

    long-to-int p3, p2

    .line 248
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    .line 247
    invoke-virtual {v0, p0, v1, p2, p3}, Lo/PidHealthStats;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 249
    invoke-static {}, Lo/PidHealthStats;->b()Lo/PidHealthStats;

    move-result-object p2

    const-string v0, "size"

    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 249
    invoke-virtual {p2, p0, v0, p1, p3}, Lo/PidHealthStats;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ClientStats: Exception:"

    .line 253
    invoke-static {p0, p2, p1}, Lo/FragmentContainer;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lcom/android/volley/Request;)Lo/ExitTransitionCoordinator;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lo/ExitTransitionCoordinator;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/Object;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v0, v10

    const-string v1, "invoked: %s"

    invoke-static {v1, v0}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 96
    :goto_0
    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v13, 0x2

    .line 99
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    invoke-virtual {v7, v8, v0}, Lo/Instrumentation;->d(Lcom/android/volley/Request;Ljava/util/Map;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->o()Lo/ContextImpl$StateListAnimator;

    move-result-object v3

    invoke-direct {v7, v0, v3}, Lo/Instrumentation;->b(Ljava/util/Map;Lo/ContextImpl$StateListAnimator;)V

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->b()V

    const-string v3, "performRequest"

    new-array v4, v10, [Ljava/lang/Object;

    .line 105
    invoke-static {v3, v4}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v3, v7, Lo/Instrumentation;->a:Lo/ListActivity;

    invoke-interface {v3, v8, v0}, Lo/ListActivity;->e(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v14
    :try_end_0
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 107
    :try_start_1
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 108
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v4, v3, v11

    const-string v3, "performRequest done. statusCode: %d, inTime: %d ms"

    new-array v15, v13, [Ljava/lang/Object;

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v9

    invoke-static {v3, v15}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v15, 0xc8

    if-eq v0, v15, :cond_0

    const-string v3, "Http status: %d"

    new-array v2, v9, [Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v2, v10

    invoke-static {v3, v2}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_9

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_8

    .line 130
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Lo/Instrumentation;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/HttpRetryException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_6

    const/16 v1, 0x133

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    .line 147
    :try_start_2
    new-instance v0, Lo/ExitTransitionCoordinator;

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->o()Lo/ContextImpl$StateListAnimator;

    move-result-object v3

    iget-object v3, v3, Lo/ContextImpl$StateListAnimator;->a:[B

    invoke-direct {v0, v1, v3, v2, v9}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V
    :try_end_2
    .catch Ljava/net/HttpRetryException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    .line 152
    :cond_2
    :try_start_3
    instance-of v1, v8, Lo/NotificationChannel;
    :try_end_3
    .catch Ljava/net/HttpRetryException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v1, :cond_3

    .line 153
    :try_start_4
    new-instance v1, Lo/NotificationChannelGroup;

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-direct {v1, v0, v3, v2, v10}, Lo/NotificationChannelGroup;-><init>(ILorg/apache/http/HttpEntity;Ljava/util/Map;Z)V

    new-array v3, v10, [B
    :try_end_4
    .catch Ljava/net/HttpRetryException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v13, v3

    move-object v3, v1

    goto :goto_1

    .line 156
    :cond_3
    :try_start_5
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v7, v1}, Lo/Instrumentation;->c(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/net/HttpRetryException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 158
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->I_()V

    .line 159
    new-instance v3, Lo/ExitTransitionCoordinator;

    invoke-direct {v3, v0, v1, v2, v10}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V
    :try_end_6
    .catch Ljava/net/HttpRetryException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v13, v1

    :goto_1
    move-object/from16 v1, p0

    move-object v10, v2

    move-object/from16 v16, v3

    move-wide v2, v4

    move-object/from16 v18, v10

    move-wide v9, v4

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    .line 163
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lo/Instrumentation;->e(JLcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lorg/apache/http/StatusLine;)V

    .line 164
    array-length v1, v13

    invoke-static {v8, v1, v9, v10}, Lo/Instrumentation;->e(Lcom/android/volley/Request;IJ)V

    if-eq v0, v15, :cond_5

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xce

    if-eq v0, v1, :cond_5

    const/16 v1, 0xca

    if-eq v0, v1, :cond_5

    move-object/from16 v1, v16

    .line 172
    instance-of v0, v1, Lo/NotificationChannelGroup;

    if-eqz v0, :cond_4

    .line 173
    move-object v3, v1

    check-cast v3, Lo/NotificationChannelGroup;

    invoke-virtual {v3}, Lo/NotificationChannelGroup;->d()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 175
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/net/HttpRetryException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    move-object/from16 v1, v16

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move-object v13, v1

    :goto_2
    move-object/from16 v1, v18

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v18, v2

    :try_start_8
    const-string v0, "Location"
    :try_end_8
    .catch Ljava/net/HttpRetryException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v1, v18

    .line 136
    :try_start_9
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v8, v0}, Lcom/android/volley/Request;->d(Ljava/lang/String;)V

    .line 139
    new-instance v2, Lorg/apache/http/client/RedirectException;

    invoke-direct {v2, v0}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catch_4
    move-exception v0

    :goto_4
    move-object/from16 v1, v18

    goto :goto_5

    .line 125
    :cond_8
    invoke-virtual {v7, v14}, Lo/Instrumentation;->e(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v8, v0}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 127
    new-instance v2, Lorg/apache/http/client/RedirectException;

    invoke-direct {v2, v0}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_9
    new-instance v2, Ljava/net/HttpRetryException;

    const-string v3, "retry"

    invoke-direct {v2, v3, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_9
    .catch Ljava/net/HttpRetryException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/apache/http/client/RedirectException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-exception v0

    :goto_5
    const/4 v13, 0x0

    goto :goto_6

    :catch_6
    move-exception v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 194
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->I_()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    const-string v4, "ioexception:"

    .line 195
    invoke-static {v4, v3}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v14, :cond_a

    .line 199
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/4 v3, 0x2

    goto :goto_7

    :cond_a
    const/4 v3, 0x2

    const/4 v10, 0x0

    :goto_7
    new-array v3, v3, [Ljava/lang/Object;

    .line 201
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Unexpected response code %d for %s"

    invoke-static {v4, v3}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_d

    .line 203
    new-instance v0, Lo/ExitTransitionCoordinator;

    invoke-direct {v0, v10, v13, v1, v2}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V

    const/16 v1, 0x191

    if-eq v10, v1, :cond_c

    const/16 v1, 0x193

    if-ne v10, v1, :cond_b

    goto :goto_8

    .line 211
    :cond_b
    new-instance v1, Lcom/android/volley/ServerError;

    invoke-direct {v1, v0}, Lcom/android/volley/ServerError;-><init>(Lo/ExitTransitionCoordinator;)V

    throw v1

    .line 207
    :cond_c
    :goto_8
    new-instance v1, Lcom/android/volley/AuthFailureError;

    invoke-direct {v1, v0}, Lcom/android/volley/AuthFailureError;-><init>(Lo/ExitTransitionCoordinator;)V

    const-string v0, "auth"

    invoke-static {v0, v8, v1}, Lo/Instrumentation;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_d
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "retrying"

    .line 215
    invoke-static {v3, v2}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    new-instance v2, Lcom/android/volley/VolleyError;

    invoke-direct {v2, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "IOException"

    invoke-static {v0, v8, v2}, Lo/Instrumentation;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_9

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->I_()V

    .line 192
    new-instance v2, Lcom/android/volley/VolleyError;

    invoke-virtual {v0}, Lorg/apache/http/client/RedirectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    const-string v0, "redirect"

    invoke-static {v0, v8, v2}, Lo/Instrumentation;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_9

    :catch_8
    move-exception v0

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->I_()V

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->I_()V

    .line 186
    new-instance v0, Lcom/android/volley/TimeoutError;

    invoke-direct {v0}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string v2, "connection"

    invoke-static {v2, v8, v0}, Lo/Instrumentation;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_9

    :catch_a
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->I_()V

    .line 183
    new-instance v0, Lcom/android/volley/TimeoutError;

    invoke-direct {v0}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string v2, "socket"

    invoke-static {v2, v8, v0}, Lo/Instrumentation;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_9

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->I_()V

    .line 180
    new-instance v2, Lcom/android/volley/VolleyError;

    invoke-direct {v2, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "Http500"

    invoke-static {v0, v8, v2}, Lo/Instrumentation;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    :goto_9
    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method protected d(Lcom/android/volley/Request;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public e(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    const-string v0, "host"

    .line 344
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 345
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 353
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 354
    invoke-static {v1}, Lo/ListFragment;->e(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Json exception reading redirect response %s"

    .line 366
    invoke-static {v0, v1}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p1

    :catch_1
    move-exception v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "IO exception reading redirect response %s"

    .line 356
    invoke-static {v0, v1}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 348
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Status/entity is NULL. It should NOT happen!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
