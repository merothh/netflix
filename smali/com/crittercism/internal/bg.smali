.class public final Lcom/crittercism/internal/bg;
.super Lcom/crittercism/internal/di;

# interfaces
.implements Lcom/crittercism/internal/br;


# instance fields
.field volatile a:J

.field b:Landroid/os/ConditionVariable;

.field private c:J

.field private d:Landroid/os/ConditionVariable;

.field private e:Lcom/crittercism/internal/ar;

.field private f:Lcom/crittercism/internal/bq;

.field private g:Lcom/crittercism/internal/bq;

.field private h:Lcom/crittercism/internal/bq;

.field private i:Lcom/crittercism/internal/bq;

.field private j:Ljava/net/URL;

.field private k:Landroid/content/Context;

.field private volatile l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Ljava/net/URL;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/bg;->c:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/crittercism/internal/bg;->a:J

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/crittercism/internal/bg;->b:Landroid/os/ConditionVariable;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/crittercism/internal/bg;->d:Landroid/os/ConditionVariable;

    iput-boolean v2, p0, Lcom/crittercism/internal/bg;->l:Z

    iput-object p1, p0, Lcom/crittercism/internal/bg;->k:Landroid/content/Context;

    iput-object p3, p0, Lcom/crittercism/internal/bg;->f:Lcom/crittercism/internal/bq;

    iput-object p4, p0, Lcom/crittercism/internal/bg;->g:Lcom/crittercism/internal/bq;

    iput-object p5, p0, Lcom/crittercism/internal/bg;->h:Lcom/crittercism/internal/bq;

    iput-object p6, p0, Lcom/crittercism/internal/bg;->i:Lcom/crittercism/internal/bq;

    iput-object p2, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    iput-object p7, p0, Lcom/crittercism/internal/bg;->j:Ljava/net/URL;

    iget-object v0, p0, Lcom/crittercism/internal/bg;->f:Lcom/crittercism/internal/bq;

    iget-object v1, v0, Lcom/crittercism/internal/bq;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/crittercism/internal/bq;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "appID"

    iget-object v3, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    invoke-interface {v3}, Lcom/crittercism/internal/ar;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "deviceID"

    iget-object v3, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    invoke-interface {v3}, Lcom/crittercism/internal/ar;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "crPlatform"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "crVersion"

    iget-object v3, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    invoke-interface {v3}, Lcom/crittercism/internal/ar;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "deviceModel"

    iget-object v3, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    invoke-interface {v3}, Lcom/crittercism/internal/ar;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "osName"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "osVersion"

    iget-object v3, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    invoke-interface {v3}, Lcom/crittercism/internal/ar;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "carrier"

    iget-object v3, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    invoke-interface {v3}, Lcom/crittercism/internal/ar;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "mobileCountryCode"

    iget-object v3, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    invoke-interface {v3}, Lcom/crittercism/internal/ar;->g()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "mobileNetworkCode"

    iget-object v3, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    invoke-interface {v3}, Lcom/crittercism/internal/ar;->h()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "appVersion"

    iget-object v3, p0, Lcom/crittercism/internal/bg;->e:Lcom/crittercism/internal/ar;

    invoke-interface {v3}, Lcom/crittercism/internal/ar;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "locale"

    new-instance v3, Lcom/crittercism/internal/bv$k;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$k;-><init>()V

    iget-object v3, v3, Lcom/crittercism/internal/bv$k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "appState"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "transactions"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/crittercism/internal/bg;->b(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "breadcrumbs"

    new-instance v2, Lcom/crittercism/internal/bm;

    iget-object v3, p0, Lcom/crittercism/internal/bg;->g:Lcom/crittercism/internal/bq;

    invoke-direct {v2, v3}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v2, v2, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "endpoints"

    new-instance v2, Lcom/crittercism/internal/bm;

    iget-object v3, p0, Lcom/crittercism/internal/bg;->h:Lcom/crittercism/internal/bq;

    invoke-direct {v2, v3}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v2, v2, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "systemBreadcrumbs"

    new-instance v2, Lcom/crittercism/internal/bm;

    iget-object v3, p0, Lcom/crittercism/internal/bg;->i:Lcom/crittercism/internal/bq;

    invoke-direct {v2, v3}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v2, v2, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONArray;)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v3, Lcom/crittercism/internal/be;

    invoke-direct {v3, v2}, Lcom/crittercism/internal/be;-><init>(Lorg/json/JSONArray;)V

    iget-object v2, v3, Lcom/crittercism/internal/be;->b:Lcom/crittercism/internal/be$a;

    sget-object v3, Lcom/crittercism/internal/be$a;->c:Lcom/crittercism/internal/be$a;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/crittercism/internal/be$a;->i:Lcom/crittercism/internal/be$a;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 6

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/crittercism/internal/bg;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/crittercism/internal/bg;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/crittercism/internal/bg;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v0, p0, Lcom/crittercism/internal/bg;->l:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/crittercism/internal/bg;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/crittercism/internal/bg;->c:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/bg;->c:J

    iget-object v0, p0, Lcom/crittercism/internal/bg;->f:Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/bg;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Landroid/content/Context;)Lcom/crittercism/internal/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/bg;->f:Lcom/crittercism/internal/bq;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/bq;)V

    new-instance v1, Lcom/crittercism/internal/bm;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v1, v1, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    iget-object v0, v0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/crittercism/internal/dz;->a(Ljava/io/File;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/crittercism/internal/bg;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/crittercism/internal/bg;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_1
    new-instance v1, Lcom/crittercism/internal/dc;

    iget-object v2, p0, Lcom/crittercism/internal/bg;->j:Ljava/net/URL;

    invoke-direct {v1, v2}, Lcom/crittercism/internal/dc;-><init>(Ljava/net/URL;)V

    invoke-virtual {v1}, Lcom/crittercism/internal/dc;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "UTF8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Request failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crittercism/internal/bg;->j:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Request failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crittercism/internal/bg;->j:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/bg;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/bg;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    return-void
.end method
