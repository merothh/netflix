.class public final Lcom/crittercism/internal/dc;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private b:Ljava/net/URL;

.field private c:Ljava/util/Map;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    sput-object v4, Lcom/crittercism/internal/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/crittercism/internal/dc;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v4, Lcom/crittercism/internal/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/dc;->c:Ljava/util/Map;

    iput v4, p0, Lcom/crittercism/internal/dc;->d:I

    iput-boolean v5, p0, Lcom/crittercism/internal/dc;->e:Z

    iput-boolean v5, p0, Lcom/crittercism/internal/dc;->f:Z

    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lcom/crittercism/internal/dc;->g:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/crittercism/internal/dc;->h:Z

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/crittercism/internal/dc;->i:I

    iput-object p1, p0, Lcom/crittercism/internal/dc;->b:Ljava/net/URL;

    iget-object v0, p0, Lcom/crittercism/internal/dc;->c:Ljava/util/Map;

    const-string/jumbo v1, "User-Agent"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "5.6.4"

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/crittercism/internal/dc;->c:Ljava/util/Map;

    const-string/jumbo v1, "Content-Type"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "application/json"

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/crittercism/internal/dc;->c:Ljava/util/Map;

    const-string/jumbo v1, "Accept"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    const-string/jumbo v3, "application/json"

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/net/HttpURLConnection;
    .locals 6

    iget-object v0, p0, Lcom/crittercism/internal/dc;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/crittercism/internal/dc;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/crittercism/internal/dc;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/crittercism/internal/dc;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-boolean v1, p0, Lcom/crittercism/internal/dc;->e:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-boolean v1, p0, Lcom/crittercism/internal/dc;->f:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-boolean v1, p0, Lcom/crittercism/internal/dc;->h:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/crittercism/internal/dc;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_2
    iget-object v1, p0, Lcom/crittercism/internal/dc;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v2, Lcom/crittercism/internal/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/crittercism/internal/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    instance-of v2, v2, Lcom/crittercism/internal/p;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/crittercism/internal/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    check-cast v2, Lcom/crittercism/internal/p;

    invoke-virtual {v2}, Lcom/crittercism/internal/p;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    sput-object v2, Lcom/crittercism/internal/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    :cond_3
    sget-object v2, Lcom/crittercism/internal/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw v0
.end method
