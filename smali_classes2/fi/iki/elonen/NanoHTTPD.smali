.class public abstract Lfi/iki/elonen/NanoHTTPD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$SharedElementCallback;,
        Lfi/iki/elonen/NanoHTTPD$ComponentCallbacks2;,
        Lfi/iki/elonen/NanoHTTPD$BroadcastReceiver;,
        Lfi/iki/elonen/NanoHTTPD$TaskStackBuilder;,
        Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;,
        Lfi/iki/elonen/NanoHTTPD$ResponseException;,
        Lfi/iki/elonen/NanoHTTPD$Response;,
        Lfi/iki/elonen/NanoHTTPD$Method;,
        Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;,
        Lfi/iki/elonen/NanoHTTPD$AssistContent;,
        Lfi/iki/elonen/NanoHTTPD$Activity;,
        Lfi/iki/elonen/NanoHTTPD$LoaderManager;,
        Lfi/iki/elonen/NanoHTTPD$PendingIntent;,
        Lfi/iki/elonen/NanoHTTPD$Fragment;,
        Lfi/iki/elonen/NanoHTTPD$FragmentManager;,
        Lfi/iki/elonen/NanoHTTPD$Dialog;,
        Lfi/iki/elonen/NanoHTTPD$ActionBar;,
        Lfi/iki/elonen/NanoHTTPD$Application;,
        Lfi/iki/elonen/NanoHTTPD$TaskDescription;,
        Lfi/iki/elonen/NanoHTTPD$StateListAnimator;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field protected e:Lfi/iki/elonen/NanoHTTPD$StateListAnimator;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/Thread;

.field private volatile h:Ljava/net/ServerSocket;

.field private final i:I

.field private j:Lfi/iki/elonen/NanoHTTPD$SharedElementCallback;

.field private l:Lfi/iki/elonen/NanoHTTPD$ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    .line 518
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lfi/iki/elonen/NanoHTTPD;->a:Ljava/util/regex/Pattern;

    const-string v1, "([ |\t]*content-type[ |\t]*:)(.*)"

    .line 522
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->c:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    .line 526
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->d:Ljava/util/regex/Pattern;

    .line 1857
    const-class v0, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2014
    invoke-direct {p0, v0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1996
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$LoaderManager;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$LoaderManager;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->j:Lfi/iki/elonen/NanoHTTPD$SharedElementCallback;

    .line 2029
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->f:Ljava/lang/String;

    .line 2030
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD;->i:I

    .line 2031
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$PendingIntent;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lfi/iki/elonen/NanoHTTPD$PendingIntent;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->b(Lfi/iki/elonen/NanoHTTPD$ComponentCallbacks2;)V

    .line 2032
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$Dialog;

    invoke-direct {p1}, Lfi/iki/elonen/NanoHTTPD$Dialog;-><init>()V

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$StateListAnimator;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 151
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 0

    .line 151
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic c(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static final c(Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_3

    .line 1975
    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 1976
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 1977
    :cond_0
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 1978
    check-cast p0, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 1979
    :cond_1
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_2

    .line 1980
    check-cast p0, Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    .line 1982
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown object to close"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 1986
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Could not close"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic d(Lfi/iki/elonen/NanoHTTPD;)I
    .locals 0

    .line 151
    iget p0, p0, Lfi/iki/elonen/NanoHTTPD;->i:I

    return p0
.end method

.method public static d(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7

    .line 2186
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Response;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v6
.end method

.method static synthetic e(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$ComponentCallbacks2;
    .locals 0

    .line 151
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD;->l:Lfi/iki/elonen/NanoHTTPD$ComponentCallbacks2;

    return-object p0
.end method

.method public static e(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 4

    .line 2193
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Activity;

    invoke-direct {v0, p1}, Lfi/iki/elonen/NanoHTTPD$Activity;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 2195
    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-array v0, v1, [B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD;->d(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0

    .line 2199
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$Activity;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    .line 2200
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2201
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$Activity;->i()Lfi/iki/elonen/NanoHTTPD$Activity;

    move-result-object v0

    .line 2203
    :cond_1
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$Activity;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2205
    sget-object p2, Lfi/iki/elonen/NanoHTTPD;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "encoding problem, responding nothing"

    invoke-virtual {p2, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p1, v1, [B

    .line 2208
    :goto_0
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$Activity;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, p2, v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD;->d(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0
.end method

.method protected static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF8"

    .line 2127
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2129
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Encoding not supported, ignored"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic f()Ljava/util/regex/Pattern;
    .locals 1

    .line 151
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic h()Ljava/util/logging/Logger;
    .locals 1

    .line 151
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->b:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic i()Ljava/util/regex/Pattern;
    .locals 1

    .line 151
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->d:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic j()Ljava/util/regex/Pattern;
    .locals 1

    .line 151
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->c:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/net/Socket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$TaskDescription;
    .locals 1

    .line 2053
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$TaskDescription;

    invoke-direct {v0, p0, p2, p1}, Lfi/iki/elonen/NanoHTTPD$TaskDescription;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    const/16 v0, 0x1388

    .line 2297
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->e(I)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 2145
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7

    const-string v0, "text/plain"

    .line 2230
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2231
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;->c()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v3

    .line 2232
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->a:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v1, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->d:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v1, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2234
    :cond_0
    :try_start_0
    invoke-interface {p1, v6}, Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    :cond_1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;->d()Ljava/util/Map;

    move-result-object v5

    .line 2243
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NanoHttpd.QUERY_STRING"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$VoiceInteractor;->a()Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lfi/iki/elonen/NanoHTTPD;->e(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 2238
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->b()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v1

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 2236
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->D:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public b(Lfi/iki/elonen/NanoHTTPD$ComponentCallbacks2;)V
    .locals 0

    .line 2287
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->l:Lfi/iki/elonen/NanoHTTPD$ComponentCallbacks2;

    return-void
.end method

.method protected b(Lfi/iki/elonen/NanoHTTPD$Response;)Z
    .locals 2

    .line 2141
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()Z
    .locals 1

    .line 2149
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected d(I)Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;
    .locals 1

    .line 2065
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;

    invoke-direct {v0, p0, p1}, Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;-><init>(Lfi/iki/elonen/NanoHTTPD;I)V

    return-object v0
.end method

.method public d()Lfi/iki/elonen/NanoHTTPD$SharedElementCallback;
    .locals 1

    .line 2153
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->j:Lfi/iki/elonen/NanoHTTPD$SharedElementCallback;

    return-object v0
.end method

.method public e(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2267
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->r:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "text/plain"

    const-string p3, "Not Found"

    invoke-static {p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$Response$Application;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 4

    .line 2345
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/net/ServerSocket;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->c(Ljava/lang/Object;)V

    .line 2346
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->e:Lfi/iki/elonen/NanoHTTPD$StateListAnimator;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$StateListAnimator;->c()V

    .line 2347
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2348
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2351
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not stop all connections"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2304
    invoke-virtual {p0, p1, v0}, Lfi/iki/elonen/NanoHTTPD;->e(IZ)V

    return-void
.end method

.method public e(IZ)V
    .locals 2

    .line 2318
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->d()Lfi/iki/elonen/NanoHTTPD$SharedElementCallback;

    move-result-object v0

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$SharedElementCallback;->e()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/net/ServerSocket;

    .line 2319
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 2321
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->d(I)Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;

    move-result-object p1

    .line 2322
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->g:Ljava/lang/Thread;

    .line 2323
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->g:Ljava/lang/Thread;

    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2324
    iget-object p2, p0, Lfi/iki/elonen/NanoHTTPD;->g:Ljava/lang/Thread;

    const-string v0, "NanoHttpd Main Listener"

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2325
    iget-object p2, p0, Lfi/iki/elonen/NanoHTTPD;->g:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 2326
    :goto_0
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;->c(Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;->d(Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;)Ljava/io/IOException;

    move-result-object p2

    if-nez p2, :cond_0

    const-wide/16 v0, 0xa

    .line 2328
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    .line 2335
    :cond_0
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;->d(Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;)Ljava/io/IOException;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 2336
    :cond_1
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;->d(Lfi/iki/elonen/NanoHTTPD$PictureInPictureParams;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public e(Lfi/iki/elonen/NanoHTTPD$StateListAnimator;)V
    .locals 0

    .line 2277
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->e:Lfi/iki/elonen/NanoHTTPD$StateListAnimator;

    return-void
.end method

.method public final g()Z
    .locals 1

    .line 2356
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
