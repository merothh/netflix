.class public final Lcom/crittercism/internal/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/cf;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONArray;

.field private e:Ljava/io/File;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cb;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/crittercism/internal/cb;->e:Ljava/io/File;

    new-instance v0, Lcom/crittercism/internal/bs;

    invoke-direct {v0}, Lcom/crittercism/internal/bs;-><init>()V

    new-instance v1, Lcom/crittercism/internal/bv$c;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$b;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$d;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$f;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$o;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$p;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$p;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$j;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$h;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$z;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$z;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$aa;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$aa;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$k;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$r;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$m;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$m;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$s;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$s;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$w;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$w;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bv$x;

    invoke-direct {v1}, Lcom/crittercism/internal/bv$x;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/internal/bs;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cb;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "crashed_session"

    new-instance v2, Lcom/crittercism/internal/bm;

    invoke-direct {v2, p2}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v2, v2, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/crittercism/internal/bq;->b()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "previous_session"

    new-instance v2, Lcom/crittercism/internal/bm;

    invoke-direct {v2, p3}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v2, v2, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/crittercism/internal/cb;->b:Lorg/json/JSONObject;

    new-instance v0, Lcom/crittercism/internal/bm;

    invoke-direct {v0, p4}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v0, v0, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/crittercism/internal/cb;->c:Lorg/json/JSONArray;

    new-instance v0, Lcom/crittercism/internal/bm;

    invoke-direct {v0, p5}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v0, v0, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/crittercism/internal/cb;->d:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "app_state"

    iget-object v1, p0, Lcom/crittercism/internal/cb;->a:Lorg/json/JSONObject;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "breadcrumbs"

    iget-object v1, p0, Lcom/crittercism/internal/cb;->b:Lorg/json/JSONObject;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "endpoints"

    iget-object v1, p0, Lcom/crittercism/internal/cb;->c:Lorg/json/JSONArray;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "systemBreadcrumbs"

    iget-object v1, p0, Lcom/crittercism/internal/cb;->d:Lorg/json/JSONArray;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v7, [B

    const/16 v1, 0x2000

    new-array v3, v1, [B

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/crittercism/internal/cb;->e:Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    array-length v1, v0

    add-int/2addr v1, v5

    new-array v1, v1, [B

    array-length v6, v0

    invoke-static {v0, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    invoke-static {v3, v7, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "dmp_name"

    iget-object v4, p0, Lcom/crittercism/internal/cb;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "dmp_file"

    invoke-static {v0}, Lcom/crittercism/internal/cr;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ndk_dmp_info"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/cb;->f:Ljava/lang/String;

    return-object v0
.end method
