.class public Lo/kV;
.super Lo/kS;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/kS;-><init>(Ljava/lang/String;)V

    .line 32
    :try_start_0
    iget-object p1, p0, Lo/kV;->j:Lorg/json/JSONObject;

    const-string p4, "targettype"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object p1, p0, Lo/kV;->j:Lorg/json/JSONObject;

    const-string p2, "deviceid"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, ""

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iget-object p1, p0, Lo/kV;->j:Lorg/json/JSONObject;

    const-string p2, "devicename"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "mdxplay"

    return-object v0
.end method
