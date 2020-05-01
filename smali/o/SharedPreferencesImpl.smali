.class Lo/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StatsManager;


# instance fields
.field private final d:Lo/SearchManager;


# direct methods
.method constructor <init>(Lo/SearchManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/SharedPreferencesImpl;->d:Lo/SearchManager;

    return-void
.end method


# virtual methods
.method public a(Lo/DevicePolicyCache;Lo/SearchDialog;)V
    .locals 1

    .line 39
    invoke-virtual {p2}, Lo/SearchDialog;->d()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p2}, Lo/SearchDialog;->C()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lo/SharedPreferencesImpl;->d(Ljava/lang/String;Lo/WaitResult$ActionBar;Ljava/util/Map;)I

    move-result p1

    .line 42
    div-int/lit8 p2, p1, 0x64

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error API request failed with status "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "Completed error API request"

    .line 45
    invoke-static {p1}, Lo/WallpaperColors;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method d(Ljava/lang/String;Lo/WaitResult$ActionBar;Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/WaitResult$ActionBar;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/SharedPreferencesImpl;->d:Lo/SearchManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/SearchManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Lcom/bugsnag/android/DeliveryFailureException;

    const-string p2, "No network connection available"

    invoke-direct {p1, p2, v1}, Lcom/bugsnag/android/DeliveryFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 59
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x1

    .line 61
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 62
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 63
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 72
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    const-string v2, "UTF-8"

    .line 73
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 74
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 75
    new-instance p3, Lo/WaitResult;

    invoke-direct {p3, v3}, Lo/WaitResult;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :try_start_3
    invoke-interface {p2, p3}, Lo/WaitResult$ActionBar;->toStream(Lo/WaitResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :try_start_4
    invoke-static {p3}, Lo/Vr2dDisplayProperties;->a(Ljava/io/Closeable;)V

    .line 82
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 89
    invoke-static {p1}, Lo/Vr2dDisplayProperties;->d(Ljava/net/URLConnection;)V

    return p2

    :catchall_0
    move-exception p2

    move-object v1, p3

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 78
    :goto_2
    :try_start_5
    invoke-static {v1}, Lo/Vr2dDisplayProperties;->a(Ljava/io/Closeable;)V

    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v1, p1

    goto :goto_4

    :catchall_3
    move-exception p2

    move-object p1, v1

    goto :goto_5

    :catch_2
    move-exception p2

    :goto_3
    :try_start_6
    const-string p1, "Unexpected error delivering payload"

    .line 86
    invoke-static {p1, p2}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 89
    invoke-static {v1}, Lo/Vr2dDisplayProperties;->d(Ljava/net/URLConnection;)V

    return v0

    :catch_3
    move-exception p2

    .line 84
    :goto_4
    :try_start_7
    new-instance p1, Lcom/bugsnag/android/DeliveryFailureException;

    const-string p3, "IOException encountered in request"

    invoke-direct {p1, p3, p2}, Lcom/bugsnag/android/DeliveryFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 89
    :goto_5
    invoke-static {p1}, Lo/Vr2dDisplayProperties;->d(Ljava/net/URLConnection;)V

    throw p2
.end method

.method public d(Lo/DevicePolicyManager;Lo/SearchDialog;)V
    .locals 1

    .line 26
    invoke-virtual {p2}, Lo/SearchDialog;->i()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p2}, Lo/SearchDialog;->D()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lo/SharedPreferencesImpl;->d(Ljava/lang/String;Lo/WaitResult$ActionBar;Ljava/util/Map;)I

    move-result p1

    const/16 p2, 0xca

    if-eq p1, p2, :cond_0

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session API request failed with status "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "Completed session tracking request"

    .line 32
    invoke-static {p1}, Lo/WallpaperColors;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
