.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    .line 60
    const/16 v0, 0xbb8

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    .line 62
    const/16 v0, 0x1000

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 83
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 84
    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    if-nez p2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 243
    const-string/jumbo v0, "If-None-Match"

    iget-object v1, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_2
    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 248
    const-string/jumbo v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 227
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    const-string/jumbo v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 234
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string/jumbo v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 231
    throw v0
.end method

.method private static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 295
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 296
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    return-object v1
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;Lcom/android/volley/Request;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 259
    new-instance v2, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v0, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 260
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 261
    const/4 v1, 0x0

    .line 263
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 264
    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0}, Lcom/android/volley/ServerError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :catchall_0
    move-exception v0

    .line 276
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 279
    invoke-virtual {p2}, Lcom/android/volley/Request;->releaseResources()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :goto_0
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 286
    invoke-virtual {v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v0

    .line 267
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    .line 269
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 270
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 276
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 279
    invoke-virtual {p2}, Lcom/android/volley/Request;->releaseResources()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 285
    :goto_2
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 286
    invoke-virtual {v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 272
    return-object v0

    .line 280
    :catch_0
    move-exception v3

    .line 283
    const-string/jumbo v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 280
    :catch_1
    move-exception v3

    .line 283
    const-string/jumbo v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private logSlowRequests(JLcom/android/volley/Request;Lcom/android/volley/NetworkResponse;Lorg/apache/http/StatusLine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/NetworkResponse;",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    sget v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    const-string/jumbo v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    .line 209
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    iget-object v0, p4, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_2

    iget-object v0, p4, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v0, v0

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 212
    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 208
    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_1
    return-void

    .line 211
    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_0
.end method


# virtual methods
.method public getRedirectedHost(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 302
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 303
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Status/entity is NULL. It should NOT happen!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 312
    invoke-static {v1}, Lcom/android/volley/toolbox/InputStreamUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 319
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v1, "host"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    const-string/jumbo v1, "host"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 327
    :cond_2
    :goto_0
    return-object v0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    const-string/jumbo v2, "IO exception reading redirect response %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 323
    :catch_1
    move-exception v1

    .line 324
    const-string/jumbo v2, "Json exception reading redirect response %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 90
    :goto_0
    const/4 v3, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V

    .line 97
    iget-object v4, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    invoke-interface {v4, p1, v0}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v9

    .line 98
    :try_start_1
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 99
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 102
    const-string/jumbo v3, "Http status: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    const/16 v3, 0x1f4

    if-ne v0, v3, :cond_0

    .line 107
    new-instance v3, Ljava/net/HttpRetryException;

    const-string/jumbo v4, "retry"

    invoke-direct {v3, v4, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catch Ljava/net/HttpRetryException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string/jumbo v0, "Http500"

    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 111
    :cond_0
    const/16 v3, 0x19a

    if-ne v0, v3, :cond_1

    .line 112
    :try_start_2
    invoke-virtual {p0, v9}, Lcom/android/volley/toolbox/BasicNetwork;->getRedirectedHost(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->changeHostUrl(Ljava/lang/String;)V

    .line 114
    new-instance v3, Lorg/apache/http/client/RedirectException;

    invoke-direct {v3, v0}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/net/HttpRetryException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 166
    :catch_1
    move-exception v0

    .line 167
    const-string/jumbo v0, "socket"

    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 117
    :cond_1
    :try_start_3
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lcom/android/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    :try_end_3
    .catch Ljava/net/HttpRetryException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v7

    .line 120
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x133

    if-ne v0, v1, :cond_4

    .line 123
    :cond_2
    :try_start_4
    const-string/jumbo v0, "Location"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->changeToRedirectedUrl(Ljava/lang/String;)V

    .line 126
    new-instance v1, Lorg/apache/http/client/RedirectException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/net/HttpRetryException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 168
    :catch_2
    move-exception v0

    .line 169
    const-string/jumbo v0, "connection"

    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 128
    :cond_3
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/net/HttpRetryException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 170
    :catch_3
    move-exception v0

    .line 171
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :cond_4
    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    .line 134
    :try_start_6
    new-instance v5, Lcom/android/volley/NetworkResponse;

    const/16 v0, 0x130

    .line 135
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/volley/Cache$Entry;->data:[B

    const/4 v3, 0x1

    invoke-direct {v5, v0, v1, v7, v3}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 163
    :cond_5
    return-object v5

    .line 139
    :cond_6
    instance-of v1, p1, Lcom/android/volley/toolbox/ProgressiveRequest;

    if-eqz v1, :cond_8

    .line 140
    new-instance v5, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v5, v0, v1, v7, v3}, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;-><init>(ILorg/apache/http/HttpEntity;Ljava/util/Map;Z)V

    .line 141
    const/4 v1, 0x0

    new-array v8, v1, [B
    :try_end_6
    .catch Ljava/net/HttpRetryException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 148
    :goto_1
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    move-object v1, p0

    move-object v4, p1

    .line 149
    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;Lcom/android/volley/NetworkResponse;Lorg/apache/http/StatusLine;)V

    .line 153
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xce

    if-eq v0, v1, :cond_5

    const/16 v1, 0xca

    if-eq v0, v1, :cond_5

    .line 157
    instance-of v0, v5, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;

    if-eqz v0, :cond_7

    .line 158
    check-cast v5, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;

    invoke-virtual {v5}, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;->getHttpEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 159
    invoke-virtual {p1}, Lcom/android/volley/Request;->releaseResources()V

    .line 161
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/net/HttpRetryException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 172
    :catch_4
    move-exception v0

    .line 173
    const-string/jumbo v1, "redirect"

    new-instance v2, Lcom/android/volley/VolleyError;

    invoke-virtual {v0}, Lorg/apache/http/client/RedirectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 143
    :cond_8
    :try_start_8
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/volley/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;Lcom/android/volley/Request;)[B
    :try_end_8
    .catch Ljava/net/HttpRetryException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v1

    .line 144
    :try_start_9
    new-instance v5, Lcom/android/volley/NetworkResponse;

    const/4 v2, 0x0

    invoke-direct {v5, v0, v1, v7, v2}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_9
    .catch Ljava/net/HttpRetryException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/apache/http/client/RedirectException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    move-object v8, v1

    goto :goto_1

    .line 174
    :catch_5
    move-exception v0

    .line 175
    :goto_2
    const-string/jumbo v4, "ioexception:"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const/4 v4, 0x0

    .line 178
    if-eqz v3, :cond_a

    .line 179
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 183
    const-string/jumbo v3, "Unexpected response code %d for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    if-eqz v2, :cond_c

    .line 185
    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 187
    const/16 v1, 0x191

    if-eq v0, v1, :cond_9

    const/16 v1, 0x193

    if-ne v0, v1, :cond_b

    .line 189
    :cond_9
    const-string/jumbo v0, "auth"

    new-instance v1, Lcom/android/volley/AuthFailureError;

    invoke-direct {v1, v3}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 181
    :cond_a
    new-instance v1, Lcom/android/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 193
    :cond_b
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0, v3}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v0

    .line 196
    :cond_c
    new-instance v0, Lcom/android/volley/NetworkError;

    invoke-direct {v0, v4}, Lcom/android/volley/NetworkError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v0

    .line 174
    :catch_6
    move-exception v0

    move-object v3, v9

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v1, v7

    move-object v3, v9

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v2, v1

    move-object v3, v9

    move-object v1, v7

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    goto :goto_2
.end method
