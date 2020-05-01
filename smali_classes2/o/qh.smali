.class public Lo/qh;
.super Lo/qf;
.source ""


# instance fields
.field protected final v:Lo/pS;

.field private final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/pS;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/qf;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lo/qh;->v:Lo/pS;

    const-string p1, "[\"accountOnHoldUma\"]"

    .line 32
    iput-object p1, p0, Lo/qh;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/volley/Request$Priority;->c:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected U()Ljava/lang/String;
    .locals 1

    const-string v0, "FetchAccountOnHoldUma"

    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lo/qh;->v:Lo/pS;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 72
    invoke-interface {v0, v1, p1}, Lo/pS;->d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    const-string p1, "nq_accountOnHoldUma"

    const-string v0, "no callback for accountOnHoldUma"

    .line 74
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/qh;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected d(Lorg/json/JSONObject;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lo/qh;->v:Lo/pS;

    const-string v1, "nq_accountOnHoldUma"

    if-eqz v0, :cond_1

    .line 49
    sget-boolean v0, Lo/qh;->e:Z

    const-string v2, "accountOnHoldUma"

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "jsonGraph"

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "value"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "FetchAccountOnHoldUma: Error parsing UMA"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v1, v2, p1}, Lo/qd;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 63
    :goto_0
    iget-object v0, p0, Lo/qh;->v:Lo/pS;

    new-instance v1, Lo/qt;

    invoke-direct {v1, p1}, Lo/qt;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lo/qt;->a()Lorg/json/JSONObject;

    move-result-object p1

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/pS;->d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    :cond_1
    const-string p1, "no callback for accountOnHoldUma"

    .line 65
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected u_()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lo/qh;->w:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
