.class Lo/hM$TaskDescription;
.super Lo/jC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic d:Lo/hM;


# direct methods
.method public constructor <init>(Lo/hM;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/bX;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;",
            ")V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lo/hM$TaskDescription;->d:Lo/hM;

    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 226
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 227
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bX;

    .line 228
    invoke-virtual {v0}, Lo/bX;->j()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 230
    :cond_0
    iput-object p3, p0, Lo/hM$TaskDescription;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 231
    iget-object p2, p0, Lo/hM$TaskDescription;->j:Lorg/json/JSONObject;

    const-string p3, "name"

    const-string v0, "NetworkDiagnostics"

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    iget-object p2, p0, Lo/hM$TaskDescription;->j:Lorg/json/JSONObject;

    const-string p3, "source"

    const-string v0, "DiagnosticPage"

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    iget-object p2, p0, Lo/hM$TaskDescription;->j:Lorg/json/JSONObject;

    const-string p3, "resultArray"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 238
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->e:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
