.class Lo/pM$1$2;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pM$1;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic d:Lo/pM$1;


# direct methods
.method constructor <init>(Lo/pM$1;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lo/pM$1$2;->d:Lo/pM$1;

    iput-object p2, p0, Lo/pM$1$2;->c:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/pM$1$2;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 255
    invoke-super {p0, p1, p2}, Lo/qc;->d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "nf_nq"

    const-string v2, "on dataFetched data:%s, umaStatus:%s"

    .line 256
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 257
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lo/pM$1$2;->c:Lcom/netflix/mediaclient/android/app/Status;

    instance-of v0, p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;

    if-eqz v0, :cond_0

    .line 258
    check-cast p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;

    .line 259
    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b(Lorg/json/JSONObject;)V

    .line 260
    iget-object p1, p0, Lo/pM$1$2;->d:Lo/pM$1;

    iget-object p1, p1, Lo/pM$1;->e:Lo/pS;

    iget-object v0, p0, Lo/pM$1$2;->a:Lorg/json/JSONObject;

    invoke-interface {p1, v0, p2}, Lo/pS;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lo/pM$1$2;->d:Lo/pM$1;

    iget-object p1, p1, Lo/pM$1;->e:Lo/pS;

    iget-object p2, p0, Lo/pM$1$2;->a:Lorg/json/JSONObject;

    iget-object v0, p0, Lo/pM$1$2;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p1, p2, v0}, Lo/pS;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
