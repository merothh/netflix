.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;
.source ""


# static fields
.field private static m:Ljava/lang/String; = "nf_nq"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)V

    .line 47
    invoke-static {p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->c(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 48
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    return-void

    .line 52
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->bK:Lcom/netflix/mediaclient/StatusCode;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    .line 55
    sget-object p1, Lo/mS;->d:Lo/mS;

    invoke-virtual {p1, p2}, Lo/mS;->b(Lorg/json/JSONObject;)Lo/mR;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p1}, Lo/mR;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 62
    :cond_1
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "FAIL"

    .line 179
    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fail"

    .line 180
    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static b(Ljava/lang/String;)Lcom/netflix/mediaclient/StatusCode;
    .locals 2

    .line 128
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bK:Lcom/netflix/mediaclient/StatusCode;

    .line 129
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->j:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->d()I

    move-result v1

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->e(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bp:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 132
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->m:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->d()I

    move-result v1

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->e(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bj:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 135
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->n:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->d()I

    move-result v1

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->e(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->k:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 136
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->d()I

    move-result v1

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->e(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->v:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->d()I

    move-result v1

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->e(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bh:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 142
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->d()I

    move-result v1

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->e(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 143
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bn:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 137
    :cond_4
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bg:Lcom/netflix/mediaclient/StatusCode;

    :cond_5
    :goto_1
    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/StatusCode;
    .locals 3

    .line 115
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->m:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "mapNqErrorCodeToStatusCode nqErrorCode=%s, detail: %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    .line 120
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->bM:Lcom/netflix/mediaclient/StatusCode;

    :cond_0
    return-object p1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "RETRY"

    .line 188
    invoke-static {p0, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "retry"

    .line 189
    invoke-static {p0, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .line 184
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BLACKLISTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "error"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "code"

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->j(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->a()I

    move-result v0

    const-string v1, "clientAction"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 77
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->a(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    const-string v1, "detail"

    .line 78
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    :cond_2
    const/4 v0, 0x0

    const-string v1, "errorNccpCode"

    .line 82
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->e:Ljava/lang/String;

    const-string v0, "errorDisplayMessage"

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->a:Ljava/lang/String;

    const-string v0, "errorActionId"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->f:I

    const-string v0, "alert"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 88
    new-instance v1, Lo/qt;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lo/qt;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lo/qt;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->h:Lorg/json/JSONObject;

    .line 89
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manifest has alert: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->h:Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->m:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "mStatusCode: %s, mUserDisplayErrorMessage:%s, actionId:%s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->d(Lorg/json/JSONObject;)V

    :cond_4
    return-void
.end method

.method private static e(ILjava/lang/String;)Z
    .locals 1

    .line 151
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private j(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const-string v0, "code"

    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bladeRunnerCode"

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected d(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "detail"

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->i:Lorg/json/JSONObject;

    const-string v2, "errorNccpCode"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->i:Lorg/json/JSONObject;

    const-string v2, "code"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->i:Lorg/json/JSONObject;

    const-string v2, "errorDisplayMessage"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->i:Lorg/json/JSONObject;

    const-string v2, "errorActionId"

    iget v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->i:Lorg/json/JSONObject;

    const-string v2, "apkStatusCode"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->i:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->y()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->g:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected q()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    .line 174
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    .line 175
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    const-string v1, "INCORRECT_PIN"

    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    const-string v1, "STREAM_QUOTA_EXCEEDED"

    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    const-string v1, "CONCURRENT_STREAM_QUOTA_EXCEEDED_FAULT"

    .line 229
    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public w()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    const-string v1, "ACCOUNT_NON_MEMBER"

    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b:Ljava/lang/String;

    const-string v1, "ACCOUNT_ON_HOLD"

    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    const-string v0, "NQ"

    return-object v0
.end method
