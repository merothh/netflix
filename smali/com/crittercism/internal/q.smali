.class public final Lcom/crittercism/internal/q;
.super Lcom/crittercism/internal/p;


# static fields
.field private static a:Z

.field private static b:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private c:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private d:Lcom/crittercism/internal/e;

.field private delegate:Ljavax/net/ssl/SSLSocketFactory;

.field private e:Lcom/crittercism/internal/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/crittercism/internal/q;->a:Z

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/crittercism/internal/p;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/crittercism/internal/q;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    .line 89
    iput-object p2, p0, Lcom/crittercism/internal/q;->d:Lcom/crittercism/internal/e;

    .line 90
    iput-object p3, p0, Lcom/crittercism/internal/q;->e:Lcom/crittercism/internal/d;

    .line 91
    invoke-static {p1}, Lcom/crittercism/internal/q;->a(Ljavax/net/ssl/SSLSocketFactory;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/q;->c:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 92
    return-void
.end method

.method private static a(Ljavax/net/ssl/SSLSocketFactory;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .locals 4

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/crittercism/internal/j;->a(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 145
    invoke-static {v0, p0}, Lcom/crittercism/internal/j;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    :try_end_0
    .catch Lcom/crittercism/internal/cj; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    invoke-static {v0}, Lcom/crittercism/internal/q;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v0

    return-object v0

    .line 148
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .locals 1

    .prologue
    .line 156
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/internal/q;->b(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    :try_end_0
    .catch Lcom/crittercism/internal/cj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 38
    sget-boolean v1, Lcom/crittercism/internal/q;->a:Z

    if-eqz v1, :cond_0

    .line 39
    sget-boolean v0, Lcom/crittercism/internal/q;->a:Z

    .line 68
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 47
    :try_start_0
    new-instance v2, Lcom/crittercism/internal/q;

    invoke-direct {v2, v1, p0, p1}, Lcom/crittercism/internal/q;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    .line 50
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 52
    :try_start_1
    const-string/jumbo v4, "localhost"

    const/16 v5, 0x1aef

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :goto_1
    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 66
    sput-object v1, Lcom/crittercism/internal/q;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 67
    sput-boolean v0, Lcom/crittercism/internal/q;->a:Z

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    throw v0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    const-string/jumbo v1, "Unable to instrument https connections."

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private static b(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .locals 3

    .prologue
    .line 164
    :try_start_0
    const-class v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const-string/jumbo v1, "clone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 166
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 169
    :catch_1
    move-exception v0

    .line 170
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 171
    :catch_2
    move-exception v0

    .line 172
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 173
    :catch_3
    move-exception v0

    .line 174
    new-instance v1, Lcom/crittercism/internal/cj;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/cj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/crittercism/internal/q;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lcom/crittercism/internal/s;

    iget-object v1, p0, Lcom/crittercism/internal/q;->d:Lcom/crittercism/internal/e;

    iget-object v2, p0, Lcom/crittercism/internal/q;->e:Lcom/crittercism/internal/d;

    iget-object v3, p0, Lcom/crittercism/internal/q;->c:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {v3}, Lcom/crittercism/internal/q;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/crittercism/internal/s;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 6

    .prologue
    .line 116
    new-instance v0, Lcom/crittercism/internal/s;

    iget-object v1, p0, Lcom/crittercism/internal/q;->d:Lcom/crittercism/internal/e;

    iget-object v2, p0, Lcom/crittercism/internal/q;->e:Lcom/crittercism/internal/d;

    iget-object v3, p0, Lcom/crittercism/internal/q;->c:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {v3}, Lcom/crittercism/internal/q;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v5

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/s;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 8

    .prologue
    .line 121
    new-instance v0, Lcom/crittercism/internal/s;

    iget-object v1, p0, Lcom/crittercism/internal/q;->d:Lcom/crittercism/internal/e;

    iget-object v2, p0, Lcom/crittercism/internal/q;->e:Lcom/crittercism/internal/d;

    iget-object v3, p0, Lcom/crittercism/internal/q;->c:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {v3}, Lcom/crittercism/internal/q;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/crittercism/internal/s;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6

    .prologue
    .line 126
    new-instance v0, Lcom/crittercism/internal/s;

    iget-object v1, p0, Lcom/crittercism/internal/q;->d:Lcom/crittercism/internal/e;

    iget-object v2, p0, Lcom/crittercism/internal/q;->e:Lcom/crittercism/internal/d;

    iget-object v3, p0, Lcom/crittercism/internal/q;->c:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {v3}, Lcom/crittercism/internal/q;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v5

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/s;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 8

    .prologue
    .line 131
    new-instance v0, Lcom/crittercism/internal/s;

    iget-object v1, p0, Lcom/crittercism/internal/q;->d:Lcom/crittercism/internal/e;

    iget-object v2, p0, Lcom/crittercism/internal/q;->e:Lcom/crittercism/internal/d;

    iget-object v3, p0, Lcom/crittercism/internal/q;->c:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {v3}, Lcom/crittercism/internal/q;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/crittercism/internal/s;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 8

    .prologue
    .line 108
    iget-object v0, p0, Lcom/crittercism/internal/q;->c:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {v0}, Lcom/crittercism/internal/q;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v7

    .line 109
    new-instance v0, Lcom/crittercism/internal/u;

    iget-object v1, p0, Lcom/crittercism/internal/q;->d:Lcom/crittercism/internal/e;

    iget-object v2, p0, Lcom/crittercism/internal/q;->e:Lcom/crittercism/internal/d;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/crittercism/internal/u;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/crittercism/internal/q;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/crittercism/internal/q;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
