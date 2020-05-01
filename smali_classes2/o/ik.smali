.class public final Lo/ik;
.super Lo/jC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ik$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/ik$Activity;


# instance fields
.field private a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ik$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ik$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ik;->d:Lo/ik$Activity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lo/jC;-><init>()V

    iput-object p1, p0, Lo/ik;->e:Ljava/lang/String;

    iput-object p2, p0, Lo/ik;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMsg"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lo/ik;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iput-object p1, p0, Lo/ik;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 24
    iput-object p3, p0, Lo/ik;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 28
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->j:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogBlobType.AppUpdate.value"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3

    .line 32
    iget-object v0, p0, Lo/ik;->j:Lorg/json/JSONObject;

    iget-object v1, p0, Lo/ik;->e:Ljava/lang/String;

    const-string v2, "dialogType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v0, p0, Lo/ik;->j:Lorg/json/JSONObject;

    iget-object v1, p0, Lo/ik;->c:Ljava/lang/String;

    const-string v2, "updateType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-object v0, p0, Lo/ik;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lo/ik;->j:Lorg/json/JSONObject;

    const-string v2, "errorMsg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_0
    iget-object v0, p0, Lo/ik;->j:Lorg/json/JSONObject;

    const-string v1, "mJson"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
