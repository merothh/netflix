.class public Lo/kT;
.super Lo/kU;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lo/kU;-><init>(Ljava/lang/String;J)V

    .line 28
    :try_start_0
    iget-object p1, p0, Lo/kT;->j:Lorg/json/JSONObject;

    const-string p2, "mdxver"

    const-string p3, "2014.1"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "mdxinit"

    return-object v0
.end method
