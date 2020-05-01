.class public Lo/nl;
.super Lo/no;
.source ""


# instance fields
.field private d:Lo/zQ$ActionBar;


# direct methods
.method public constructor <init>(Lo/zQ$ActionBar;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/no;-><init>()V

    .line 29
    iput-object p1, p0, Lo/nl;->d:Lo/zQ$ActionBar;

    return-void
.end method


# virtual methods
.method public J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, "createSafetyNetNonce"

    return-object v0
.end method

.method protected R()Ljava/lang/String;
    .locals 1

    const-string v0, "createSafetyNetNonce"

    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lo/nl;->d:Lo/zQ$ActionBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    invoke-interface {v0, p1, v1}, Lo/zQ$ActionBar;->a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_safetynet_getnounce"

    const-string v0, "callback null?"

    .line 82
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/nl;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected d(Lorg/json/JSONObject;)V
    .locals 5

    .line 60
    iget-object v0, p0, Lo/nl;->d:Lo/zQ$ActionBar;

    const-string v1, "nf_safetynet_getnounce"

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->k:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    invoke-static {v0, p1, v2}, Lo/iZ;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "nonce"

    .line 65
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to parse response"

    .line 67
    invoke-static {v1, p1, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    :goto_0
    iget-object p1, p0, Lo/nl;->d:Lo/zQ$ActionBar;

    invoke-interface {p1, v0, v2}, Lo/zQ$ActionBar;->a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "callback null?"

    .line 73
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 43
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->y:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method
