.class public final Lcom/crittercism/internal/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lcom/crittercism/internal/ar;Ljava/util/List;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/a;->a:Lorg/json/JSONObject;

    invoke-interface {p2}, Ljava/util/List;->size()I

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v2, "5.6.4"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v2}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/c;

    invoke-virtual {v0}, Lcom/crittercism/internal/c;->d()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/crittercism/internal/a;->a:Lorg/json/JSONObject;

    const-string/jumbo v2, "d"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Lcom/crittercism/internal/ar;Ljava/util/List;)Lcom/crittercism/internal/a;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/crittercism/internal/a;

    invoke-direct {v0, p0, p1}, Lcom/crittercism/internal/a;-><init>(Lcom/crittercism/internal/ar;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to generate APM request\'s JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
