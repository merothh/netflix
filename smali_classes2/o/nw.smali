.class public Lo/nw;
.super Lo/no;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private e:Lo/zQ$TaskDescription;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/zQ$TaskDescription;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/no;-><init>()V

    .line 28
    iput-object p2, p0, Lo/nw;->e:Lo/zQ$TaskDescription;

    .line 29
    iput-object p1, p0, Lo/nw;->b:Ljava/lang/String;

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

    const-string v0, "verifySafetyNetAttestation"

    return-object v0
.end method

.method protected R()Ljava/lang/String;
    .locals 1

    const-string v0, "verifySafetyNetAttestation"

    return-object v0
.end method

.method protected T()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lo/nw;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_safetynet_attest_request"

    const-string v2, "getNodeQuarkRequest:: attestation: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 61
    invoke-super {p0}, Lo/no;->T()Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lo/nw;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "attestation"

    .line 63
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/nw;->e:Lo/zQ$TaskDescription;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    invoke-interface {v0, p1, v1}, Lo/zQ$TaskDescription;->b(Lcom/netflix/mediaclient/android/app/Status;Lo/zC;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_safetynet_attest_request"

    const-string v0, "callback null?"

    .line 95
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/nw;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected e(Lorg/json/JSONObject;)V
    .locals 5

    .line 73
    iget-object v0, p0, Lo/nw;->e:Lo/zQ$TaskDescription;

    const-string v1, "nf_safetynet_attest_request"

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->k:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    invoke-static {v0, p1, v2}, Lo/iZ;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    const/4 v2, 0x0

    .line 78
    :try_start_0
    new-instance v3, Lo/zC;

    invoke-direct {v3, p1}, Lo/zC;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to parse response!"

    .line 80
    invoke-static {v1, p1, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    :goto_0
    iget-object p1, p0, Lo/nw;->e:Lo/zQ$TaskDescription;

    invoke-interface {p1, v0, v2}, Lo/zQ$TaskDescription;->b(Lcom/netflix/mediaclient/android/app/Status;Lo/zC;)V

    goto :goto_1

    :cond_0
    const-string p1, "callback null?"

    .line 86
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
