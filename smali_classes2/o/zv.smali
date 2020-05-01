.class public abstract Lo/zv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/Logblob;


# instance fields
.field protected g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

.field protected final h:J

.field protected j:Lorg/json/JSONObject;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lo/aey;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lo/zv;->h:J

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lo/zv;->j:Lorg/json/JSONObject;

    .line 49
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iput-object v0, p0, Lo/zv;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 91
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lo/zv;->j:Lorg/json/JSONObject;

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 107
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lo/zv;->j:Lorg/json/JSONObject;

    const-string v1, "sessionid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private e(Lo/cz;)V
    .locals 4

    .line 128
    :try_start_0
    invoke-interface {p1}, Lo/cz;->Z()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "0"

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 130
    :cond_0
    :try_start_1
    iget-object v1, p0, Lo/zv;->j:Lorg/json/JSONObject;

    const-string v3, "chipset"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-interface {p1}, Lo/cz;->aa()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, v2

    .line 133
    :cond_1
    iget-object v0, p0, Lo/zv;->j:Lorg/json/JSONObject;

    const-string v1, "chipsetHardware"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 120
    iget-object v0, p0, Lo/zv;->j:Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uniqueLogId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public G_()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lo/zv;->j:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lo/zv;->h:J

    return-wide v0
.end method

.method public c(Landroid/content/Context;Lo/cz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lo/zv;->j:Lorg/json/JSONObject;

    invoke-static {p1}, Lo/adi;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "clver"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {p0}, Lo/zv;->j()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lo/zv;->j:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lo/zv;->j()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sev"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_0
    invoke-virtual {p0}, Lo/zv;->d()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lo/zv;->j:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :cond_1
    invoke-direct {p0, p3}, Lo/zv;->b(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p4}, Lo/zv;->c(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lo/zv;->f()V

    .line 81
    invoke-direct {p0, p2}, Lo/zv;->e(Lo/cz;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .line 158
    iget-object v0, p0, Lo/zv;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public j()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    .line 153
    iget-object v0, p0, Lo/zv;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-object v0
.end method
