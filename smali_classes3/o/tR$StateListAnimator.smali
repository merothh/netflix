.class Lo/tR$StateListAnimator;
.super Lo/jC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 406
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 408
    :try_start_0
    iget-object v0, p0, Lo/tR$StateListAnimator;->j:Lorg/json/JSONObject;

    const-string v1, "jobId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    iget-object p1, p0, Lo/tR$StateListAnimator;->j:Lorg/json/JSONObject;

    const-string v0, "success"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 410
    iget-object p1, p0, Lo/tR$StateListAnimator;->j:Lorg/json/JSONObject;

    const-string p2, "error"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "nf_cache"

    const-string v0, "unable to create log"

    .line 412
    invoke-static {p3, p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "bcpJobComplete"

    return-object v0
.end method
