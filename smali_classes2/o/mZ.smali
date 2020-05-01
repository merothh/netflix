.class public final Lo/mZ;
.super Lo/jC;
.source ""


# instance fields
.field private final b:Lo/nh;


# direct methods
.method public constructor <init>(Lo/nh;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 20
    iput-object p1, p0, Lo/mZ;->b:Lo/nh;

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

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->h:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3

    .line 36
    :try_start_0
    iget-object v0, p0, Lo/mZ;->b:Lo/nh;

    invoke-virtual {v0}, Lo/nh;->s()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lo/mZ;->b:Lo/nh;

    invoke-virtual {v1, v0}, Lo/nh;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 39
    iget-object v1, p0, Lo/mZ;->j:Lorg/json/JSONObject;

    const-string v2, "safetyNetState"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :cond_0
    iget-object v0, p0, Lo/mZ;->j:Lorg/json/JSONObject;

    return-object v0
.end method
