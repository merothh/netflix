.class public Lo/pO;
.super Lo/pR;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/pR;-><init>()V

    .line 14
    iput-boolean p1, p0, Lo/pO;->b:Z

    .line 15
    iput-object p2, p0, Lo/pO;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final c()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lo/pO;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/pO;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lorg/json/JSONObject;
    .locals 5

    .line 19
    invoke-super {p0}, Lo/pR;->e()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "downloadCompleted"

    .line 21
    iget-boolean v2, p0, Lo/pO;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 22
    iget-object v1, p0, Lo/pO;->a:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "secureStopChallenge"

    .line 23
    iget-object v2, p0, Lo/pO;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "nf_msl_volley_bladerunner"

    const-string v4, "error creating params"

    .line 26
    invoke-static {v3, v1, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-object v0
.end method
