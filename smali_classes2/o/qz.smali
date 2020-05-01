.class public Lo/qz;
.super Lo/qn;
.source ""


# instance fields
.field private final w:Lo/sA;


# direct methods
.method private static c(Lorg/json/JSONObject;Lo/sA;)V
    .locals 5

    const-string v0, "links"

    .line 30
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lo/sA;->d()Lo/sx;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "href"

    .line 34
    invoke-virtual {p1}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rel"

    .line 35
    invoke-virtual {p1}, Lo/sx;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "license"

    .line 36
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "nf_manifest"

    const-string v0, "error injecting old links into manifest"

    .line 40
    invoke-static {p1, v0, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static e(Lorg/json/JSONObject;Lo/sA;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p0, :cond_1

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 53
    invoke-static {v1, p1}, Lo/qz;->c(Lorg/json/JSONObject;Lo/sA;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "nf_manifest"

    const-string v1, "parsing manifest error"

    .line 57
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/qz;->w:Lo/sA;

    invoke-static {p1, v0}, Lo/qz;->e(Lorg/json/JSONObject;Lo/sA;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
