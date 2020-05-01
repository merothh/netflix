.class Lo/tR$TaskDescription;
.super Lo/jC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 355
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 357
    :try_start_0
    iget-object v0, p0, Lo/tR$TaskDescription;->j:Lorg/json/JSONObject;

    const-string v1, "jobId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_cache"

    const-string v2, "unable to create log"

    .line 359
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public b(J)Lo/tR$TaskDescription;
    .locals 3

    const/4 v0, 0x0

    .line 390
    :try_start_0
    iget-object v1, p0, Lo/tR$TaskDescription;->j:Lorg/json/JSONObject;

    const-string v2, "finished"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 391
    iget-object v1, p0, Lo/tR$TaskDescription;->j:Lorg/json/JSONObject;

    const-string v2, "diskSpace"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "nf_cache"

    const-string v1, "unable to create log"

    .line 393
    invoke-static {v0, p1, v1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object p0
.end method

.method public c(Ljava/util/List;)Lo/tR$TaskDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;)",
            "Lo/tR$TaskDescription;"
        }
    .end annotation

    .line 365
    :try_start_0
    iget-object v0, p0, Lo/tR$TaskDescription;->j:Lorg/json/JSONObject;

    const-string v1, "finished"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 366
    iget-object v0, p0, Lo/tR$TaskDescription;->j:Lorg/json/JSONObject;

    const-string v1, "numVideos"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 368
    iget-object v1, p0, Lo/tR$TaskDescription;->j:Lorg/json/JSONObject;

    const-string v2, "videos"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Ae;

    .line 370
    iget-wide v1, v1, Lo/Ae;->e:J

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_cache"

    const-string v2, "unable to create log"

    .line 373
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "bcpJob"

    return-object v0
.end method

.method public e(I)Lo/tR$TaskDescription;
    .locals 3

    const/4 v0, 0x0

    .line 380
    :try_start_0
    iget-object v1, p0, Lo/tR$TaskDescription;->j:Lorg/json/JSONObject;

    const-string v2, "finished"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 381
    iget-object v1, p0, Lo/tR$TaskDescription;->j:Lorg/json/JSONObject;

    const-string v2, "timeout"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_cache"

    const-string v2, "unable to create log"

    .line 383
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object p0
.end method
