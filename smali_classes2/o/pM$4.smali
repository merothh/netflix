.class Lo/pM$4;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pM;->b(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lo/pS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/pS;

.field final synthetic b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;

.field final synthetic d:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic e:Lo/pM;


# direct methods
.method constructor <init>(Lo/pM;Lcom/netflix/mediaclient/android/app/Status;Lo/pS;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lo/pM$4;->e:Lo/pM;

    iput-object p2, p0, Lo/pM$4;->d:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/pM$4;->a:Lo/pS;

    iput-object p4, p0, Lo/pM$4;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 334
    invoke-super {p0, p1, p2}, Lo/qc;->d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 335
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "on dataFetched data:%s, umaStatus:%s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 336
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lo/pM$4;->d:Lcom/netflix/mediaclient/android/app/Status;

    instance-of v0, p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    if-eqz v0, :cond_0

    .line 337
    check-cast p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;->b(Lorg/json/JSONObject;)V

    .line 339
    :cond_0
    iget-object p1, p0, Lo/pM$4;->a:Lo/pS;

    iget-object p2, p0, Lo/pM$4;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;

    iget-object v0, p0, Lo/pM$4;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p1, p2, v0}, Lo/pS;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
