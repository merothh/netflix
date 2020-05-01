.class public final Lo/jI;
.super Lo/zv;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Long;

.field private final e:Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    const-string v0, "report"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lo/zv;-><init>()V

    iput-object p1, p0, Lo/jI;->e:Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    iput-object p2, p0, Lo/jI;->b:Ljava/lang/Long;

    iput-object p3, p0, Lo/jI;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    .line 21
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->l:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogBlobType.LanguageUserOverride.value"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3

    .line 13
    iget-object v0, p0, Lo/jI;->j:Lorg/json/JSONObject;

    iget-object v1, p0, Lo/jI;->e:Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "report"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v0, p0, Lo/jI;->j:Lorg/json/JSONObject;

    iget-object v1, p0, Lo/jI;->b:Ljava/lang/Long;

    const-string v2, "playableId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v0, p0, Lo/jI;->j:Lorg/json/JSONObject;

    iget-object v1, p0, Lo/jI;->a:Ljava/lang/String;

    const-string v2, "playableUri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object v0, p0, Lo/jI;->j:Lorg/json/JSONObject;

    const-string v1, "mJson"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
