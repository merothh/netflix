.class public final Lcom/crittercism/internal/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/cf;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/json/JSONArray;

.field public e:Ljava/lang/String;

.field public f:Lorg/json/JSONObject;

.field public g:Z

.field private h:Lorg/json/JSONObject;

.field private i:Lorg/json/JSONArray;

.field private j:Lorg/json/JSONArray;

.field private k:Lorg/json/JSONArray;

.field private l:Ljava/lang/String;

.field private m:Lorg/json/JSONArray;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;J)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/crittercism/internal/bi;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/crittercism/internal/bi;->o:I

    iput-boolean v0, p0, Lcom/crittercism/internal/bi;->p:Z

    iput-boolean v0, p0, Lcom/crittercism/internal/bi;->g:Z

    instance-of v1, p1, Lcom/crittercism/internal/cp;

    iput-boolean v1, p0, Lcom/crittercism/internal/bi;->p:Z

    sget-object v1, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v1}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/bi;->q:Ljava/lang/String;

    const-string/jumbo v1, "uhe"

    iput-object v1, p0, Lcom/crittercism/internal/bi;->e:Ljava/lang/String;

    new-instance v1, Lcom/crittercism/internal/bs;

    invoke-direct {v1}, Lcom/crittercism/internal/bs;-><init>()V

    new-instance v2, Lcom/crittercism/internal/bv$a;

    invoke-direct {v2}, Lcom/crittercism/internal/bv$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$c;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$c;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$b;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$b;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$d;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$d;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$e;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$e;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$f;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$f;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$o;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$o;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$p;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$p;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$i;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$i;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$j;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$j;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$h;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$h;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$z;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$z;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$aa;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$aa;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$k;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$k;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$l;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$l;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$n;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$n;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$m;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$m;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$q;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$q;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$r;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$r;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$s;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$s;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$t;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$t;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$u;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$u;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$v;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$v;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$w;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$w;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$x;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$x;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    move-result-object v2

    new-instance v3, Lcom/crittercism/internal/bv$y;

    invoke-direct {v3}, Lcom/crittercism/internal/bv$y;-><init>()V

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/bs;->a(Lcom/crittercism/internal/bu;)Lcom/crittercism/internal/bs;

    invoke-virtual {v1}, Lcom/crittercism/internal/bs;->a()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/bi;->f:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/crittercism/internal/bi;->h:Lorg/json/JSONObject;

    iput-wide p2, p0, Lcom/crittercism/internal/bi;->a:J

    invoke-direct {p0, p1}, Lcom/crittercism/internal/bi;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/bi;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/bi;->c:Ljava/lang/String;

    :cond_0
    iget-boolean v1, p0, Lcom/crittercism/internal/bi;->p:Z

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/crittercism/internal/bi;->c(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/crittercism/internal/bi;->o:I

    :cond_1
    const-string/jumbo v1, "android"

    iput-object v1, p0, Lcom/crittercism/internal/bi;->l:Ljava/lang/String;

    sget-object v1, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v1}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crittercism/internal/bi;->n:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/crittercism/internal/bi;->m:Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/crittercism/internal/bi;->b(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/crittercism/internal/bi;->m:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/crittercism/internal/bi;->p:Z

    if-eqz v0, :cond_1

    check-cast p1, Lcom/crittercism/internal/cp;

    iget-object v0, p1, Lcom/crittercism/internal/cp;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/Throwable;)I
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_2

    aget-object v2, v3, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-ne v5, v2, :cond_0

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :goto_3
    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "app_state"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->f:Lorg/json/JSONObject;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "breadcrumbs"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->h:Lorg/json/JSONObject;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "current_thread_id"

    iget-wide v2, p0, Lcom/crittercism/internal/bi;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/crittercism/internal/bi;->i:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "endpoints"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->i:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/bi;->j:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "systemBreadcrumbs"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->j:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/bi;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/crittercism/internal/bi;->k:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "transactions"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->k:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v0, "exception_name"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "exception_reason"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "platform"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->l:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/crittercism/internal/bi;->d:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "threads"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->d:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v0, "ts"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->n:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "type"

    iget-object v0, p0, Lcom/crittercism/internal/bi;->e:Ljava/lang/String;

    iget-wide v4, p0, Lcom/crittercism/internal/bi;->a:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-bg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "unsymbolized_stacktrace"

    iget-object v2, p0, Lcom/crittercism/internal/bi;->m:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/crittercism/internal/bi;->p:Z

    if-nez v0, :cond_5

    const-string/jumbo v0, "suspect_line_index"

    iget v2, p0, Lcom/crittercism/internal/bi;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string/jumbo v0, "is_manually_logged"

    iget-boolean v2, p0, Lcom/crittercism/internal/bi;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final a(Lcom/crittercism/internal/bq;)V
    .locals 1

    new-instance v0, Lcom/crittercism/internal/bm;

    invoke-direct {v0, p1}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v0, v0, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/crittercism/internal/bi;->i:Lorg/json/JSONArray;

    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lcom/crittercism/internal/bi;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/crittercism/internal/bq;)V
    .locals 2

    new-instance v0, Lcom/crittercism/internal/bm;

    invoke-direct {v0, p2}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v0, v0, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    :try_start_0
    iget-object v1, p0, Lcom/crittercism/internal/bi;->h:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/bi;->k:Lorg/json/JSONArray;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be;

    :try_start_0
    iget-object v2, p0, Lcom/crittercism/internal/bi;->k:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/crittercism/internal/be;->j()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/crittercism/internal/bq;)V
    .locals 1

    new-instance v0, Lcom/crittercism/internal/bm;

    invoke-direct {v0, p1}, Lcom/crittercism/internal/bm;-><init>(Lcom/crittercism/internal/bq;)V

    iget-object v0, v0, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/crittercism/internal/bi;->j:Lorg/json/JSONArray;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/bi;->q:Ljava/lang/String;

    return-object v0
.end method
