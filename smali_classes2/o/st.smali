.class public Lo/st;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lo/sE;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "nf_manifest"

    const-string v2, "parsing manifest response start ..."

    .line 19
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "timestamp"

    .line 28
    invoke-static {v3, v4}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "skip bad entry to break manifest fetch loop"

    .line 29
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lo/sB;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sB;

    .line 38
    invoke-static {}, Lo/sB;->ak()J

    move-result-wide v4

    invoke-virtual {v3}, Lo/sB;->t()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lo/sB;->e(J)V

    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "parseManifestResponse error"

    .line 42
    invoke-static {v1, p0, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 43
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "parseManifestResponse error:"

    invoke-direct {v3, v4, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    :cond_1
    const-string p0, "parsing manifest response end."

    .line 45
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
