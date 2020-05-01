.class Lo/pM$1;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pM;->a(Lo/rf;Lo/pS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic c:Lo/pM;

.field final synthetic e:Lo/pS;


# direct methods
.method constructor <init>(Lo/pM;Landroid/content/Context;Lo/pS;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lo/pM$1;->c:Lo/pM;

    iput-object p2, p0, Lo/pM$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lo/pM$1;->e:Lo/pS;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 246
    invoke-super {p0, p1, p2}, Lo/qc;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 248
    instance-of v0, p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    if-eqz v0, :cond_1

    .line 249
    move-object v0, p2

    check-cast v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    .line 250
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Lo/qp;

    iget-object v1, p0, Lo/pM$1;->a:Landroid/content/Context;

    sget-object v2, Lo/qp;->v:Ljava/lang/String;

    new-instance v3, Lo/pM$1$2;

    invoke-direct {v3, p0, p2, p1}, Lo/pM$1$2;-><init>(Lo/pM$1;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2, v3}, Lo/qp;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/pS;)V

    .line 267
    iget-object p1, p0, Lo/pM$1;->c:Lo/pM;

    invoke-static {p1}, Lo/pM;->a(Lo/pM;)Lo/SmartSelectSprite;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lo/pM$1;->e:Lo/pS;

    invoke-interface {v0, p1, p2}, Lo/pS;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lo/pM$1;->e:Lo/pS;

    invoke-interface {v0, p1, p2}, Lo/pS;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
