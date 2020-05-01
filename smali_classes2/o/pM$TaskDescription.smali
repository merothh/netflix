.class Lo/pM$TaskDescription;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic b:Lo/pM;

.field c:Lo/pS;


# direct methods
.method constructor <init>(Lo/pM;Lo/pS;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lo/pM$TaskDescription;->b:Lo/pM;

    invoke-direct {p0}, Lo/qc;-><init>()V

    .line 131
    iput-object p2, p0, Lo/pM$TaskDescription;->c:Lo/pS;

    return-void
.end method


# virtual methods
.method public e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 136
    invoke-super {p0, p1, p2}, Lo/qc;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 137
    instance-of v0, p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    if-eqz v0, :cond_2

    .line 138
    move-object v0, p2

    check-cast v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    .line 139
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;->n()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lo/pM;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;->n()Lorg/json/JSONObject;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "found ACCOUNT_ON_HOLD uma: %s"

    invoke-static {v1, v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    iget-object v0, p0, Lo/pM$TaskDescription;->c:Lo/pS;

    invoke-interface {v0, p1, p2}, Lo/pS;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lo/qh;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lo/pM$TaskDescription$1;

    invoke-direct {v2, p0, p2, p1}, Lo/pM$TaskDescription$1;-><init>(Lo/pM$TaskDescription;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/qh;-><init>(Landroid/content/Context;Lo/pS;)V

    .line 162
    iget-object p1, p0, Lo/pM$TaskDescription;->b:Lo/pM;

    invoke-static {p1}, Lo/pM;->a(Lo/pM;)Lo/SmartSelectSprite;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lo/pM$TaskDescription;->c:Lo/pS;

    invoke-interface {v0, p1, p2}, Lo/pS;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lo/pM$TaskDescription;->c:Lo/pS;

    invoke-interface {v0, p1, p2}, Lo/pS;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
