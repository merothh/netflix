.class public Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/HttpDataSource;


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private final contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer/upstream/TransferListener;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;

    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    iput p4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    iput p5, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    iput-boolean p6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DefaultHttpDataSource"

    const-string/jumbo v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 9

    const-wide/16 v0, -0x1

    const-string/jumbo v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    const-string/jumbo v2, "Content-Range"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    sub-long v2, v6, v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    move-wide v0, v2

    :cond_1
    :goto_1
    return-wide v0

    :catch_0
    move-exception v2

    const-string/jumbo v2, "DefaultHttpDataSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected Content-Length ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    :try_start_2
    const-string/jumbo v6, "DefaultHttpDataSource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Inconsistent headers ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "] ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v2, "DefaultHttpDataSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected Content-Range ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported protocol redirect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method private makeConnection(Lcom/google/android/exoplayer/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 12

    const/4 v9, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/net/URL;

    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->postBody:[B

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    iget-wide v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iget v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v8, v9

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v1, :cond_1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v8, v0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_2
    add-int/lit8 v10, v1, 0x1

    const/16 v9, 0x14

    if-gt v1, v9, :cond_4

    move-object v1, p0

    move v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v11, 0x12c

    if-eq v9, v11, :cond_2

    const/16 v11, 0x12d

    if-eq v9, v11, :cond_2

    const/16 v11, 0x12e

    if-eq v9, v11, :cond_2

    const/16 v11, 0x12f

    if-eq v9, v11, :cond_2

    if-nez v3, :cond_3

    const/16 v3, 0x133

    if-eq v9, v3, :cond_2

    const/16 v3, 0x134

    if-ne v9, v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    const-string/jumbo v9, "Location"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v2, v9}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    move v1, v10

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeConnection(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .locals 7

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v1, p5, v2

    if-eqz v1, :cond_3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-long v2, p3, p5

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string/jumbo v2, "Range"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_4

    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p2, :cond_6

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :goto_2
    return-object v0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_2
.end method

.method private readInternal([BII)I
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v0, -0x1

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_1

    :goto_0
    if-nez p3, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private skipInternal()V
    .locals 6

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    sub-long/2addr v2, v4

    array-length v1, v0

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bytesRemaining()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public close()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRemaining()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/util/Util;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iput-object v5, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v5, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_2
    throw v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 9

    const/16 v8, 0xc8

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesRead:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesSkipped:J

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->makeConnection(Lcom/google/android/exoplayer/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-lt v4, v8, :cond_0

    const/16 v5, 0x12b

    if-le v4, v5, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v1, v4, v0, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/util/Map;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1, v7}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;I)V

    throw v1

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1, v7}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;I)V

    throw v1

    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    new-instance v0, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v5, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v0

    :cond_2
    if-ne v4, v8, :cond_3

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_3

    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    :cond_3
    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    iget v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_5

    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    iput-boolean v7, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->opened:Z

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    return-wide v0

    :cond_5
    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToSkip:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_6
    move-wide v0, v2

    goto :goto_0

    :cond_7
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v7}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;I)V

    throw v1
.end method

.method public read([BII)I
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->skipInternal()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->readInternal([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;I)V

    throw v1
.end method
