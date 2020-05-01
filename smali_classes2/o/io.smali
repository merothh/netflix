.class public final Lo/io;
.super Lo/jC;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lo/bY$TaskDescription;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/bY$TaskDescription;Ljava/lang/String;)V
    .locals 1

    const-string v0, "moduleInfo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lo/jC;-><init>()V

    iput-object p1, p0, Lo/io;->c:Lo/bY$TaskDescription;

    iput-object p2, p0, Lo/io;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lo/io;
    .locals 0

    .line 34
    iput-object p1, p0, Lo/io;->e:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lo/io;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 36
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iput-object p1, p0, Lo/io;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    :cond_0
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->g:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogBlobType.DynamicModule.value"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3

    .line 23
    iget-object v0, p0, Lo/io;->j:Lorg/json/JSONObject;

    iget-object v1, p0, Lo/io;->c:Lo/bY$TaskDescription;

    invoke-virtual {v1}, Lo/bY$TaskDescription;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "moduleName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iget-object v0, p0, Lo/io;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    iget-object v1, p0, Lo/io;->j:Lorg/json/JSONObject;

    const-string v2, "moduleState"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_0
    iget-object v0, p0, Lo/io;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28
    iget-object v1, p0, Lo/io;->j:Lorg/json/JSONObject;

    const-string v2, "moduleError"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    :cond_1
    iget-object v0, p0, Lo/io;->j:Lorg/json/JSONObject;

    const-string v1, "mJson"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
