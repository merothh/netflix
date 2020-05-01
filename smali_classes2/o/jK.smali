.class public Lo/jK;
.super Lo/jC;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 12
    :try_start_0
    iget-object v0, p0, Lo/jK;->j:Lorg/json/JSONObject;

    const-string v1, "xid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object p1, p0, Lo/jK;->j:Lorg/json/JSONObject;

    const-string v0, "pdsDuration"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    iget-object p1, p0, Lo/jK;->j:Lorg/json/JSONObject;

    const-string p2, "pdsDurationByBookmark"

    invoke-virtual {p1, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
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

    const-string v0, "pdsDurations"

    return-object v0
.end method
