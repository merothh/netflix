.class Lo/pM$TaskDescription$1;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pM$TaskDescription;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic e:Lo/pM$TaskDescription;


# direct methods
.method constructor <init>(Lo/pM$TaskDescription;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/pM$TaskDescription$1;->e:Lo/pM$TaskDescription;

    iput-object p2, p0, Lo/pM$TaskDescription$1;->c:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/pM$TaskDescription$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 150
    invoke-super {p0, p1, p2}, Lo/qc;->d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 151
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "on dataFetched data:%s, umaStatus:%s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lo/pM$TaskDescription$1;->c:Lcom/netflix/mediaclient/android/app/Status;

    instance-of v0, p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;

    if-eqz v0, :cond_0

    .line 153
    check-cast p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;

    .line 154
    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;->b(Lorg/json/JSONObject;)V

    .line 155
    iget-object p1, p0, Lo/pM$TaskDescription$1;->e:Lo/pM$TaskDescription;

    iget-object p1, p1, Lo/pM$TaskDescription;->c:Lo/pS;

    iget-object v0, p0, Lo/pM$TaskDescription$1;->b:Lorg/json/JSONObject;

    invoke-interface {p1, v0, p2}, Lo/pS;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lo/pM$TaskDescription$1;->e:Lo/pM$TaskDescription;

    iget-object p1, p1, Lo/pM$TaskDescription;->c:Lo/pS;

    iget-object p2, p0, Lo/pM$TaskDescription$1;->b:Lorg/json/JSONObject;

    iget-object v0, p0, Lo/pM$TaskDescription$1;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p1, p2, v0}, Lo/pS;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
