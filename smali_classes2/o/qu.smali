.class public Lo/qu;
.super Lo/qg;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lo/qg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lo/qu;->b:Lo/pS;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lo/qu;->b:Lo/pS;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/pS;->c(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    sget-object p1, Lo/qu;->e:Ljava/lang/String;

    const-string v0, "no callback for link"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 5

    .line 19
    iget-object v0, p0, Lo/qu;->B:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    invoke-static {v0, p1, v1}, Lo/iZ;->b(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "result"

    .line 23
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "response"

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 26
    :cond_0
    sget-object p1, Lo/qu;->e:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/qu;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v3, "onSuccess %s status: %s responseActions %s"

    invoke-static {p1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 27
    iget-object p1, p0, Lo/qu;->b:Lo/pS;

    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lo/qu;->b:Lo/pS;

    invoke-interface {p1, v0, v1}, Lo/pS;->c(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lo/qu;->e:Ljava/lang/String;

    const-string v0, "no callback for licenseDeactivate"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/qu;->b(Lorg/json/JSONObject;)V

    return-void
.end method
