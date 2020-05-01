.class public Lo/Rd;
.super Lo/jR;
.source ""


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p3, p4}, Lo/jR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lo/Rd;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 43
    iget-object p1, p0, Lo/Rd;->j:Lorg/json/JSONObject;

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->f:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->e()I

    move-result p3

    const-string p4, "level"

    invoke-virtual {p1, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lo/Rd;->j:Lorg/json/JSONObject;

    const-string p3, "mid"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_0
    invoke-static {p5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, Lo/Rd;->j:Lorg/json/JSONObject;

    const-string p2, "errorcode"

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_1
    invoke-static {p6}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    iget-object p1, p0, Lo/Rd;->j:Lorg/json/JSONObject;

    const-string p2, "errormsg"

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)V
    .locals 8

    const-string v0, "offlineDialogLogblob"

    .line 68
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {p0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 82
    :cond_2
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    .line 87
    :cond_3
    invoke-static {p4}, Lo/aeF;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Ljava/lang/String;

    move-result-object v6

    .line 89
    :try_start_0
    new-instance p4, Lo/Rd;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string v7, "offlineWatchError"

    move-object v1, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lo/Rd;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p4}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception:"

    .line 93
    invoke-static {v0, p1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "JSONException:"

    .line 91
    invoke-static {v0, p1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->a:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
