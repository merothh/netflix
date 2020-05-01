.class public Lo/qp;
.super Lo/qf;
.source ""


# static fields
.field public static B:Ljava/lang/String; = "upSellOnOfflineDeviceLimit"

.field public static v:Ljava/lang/String; = "upSellOnConcurrentStream"


# instance fields
.field private final C:Ljava/lang/String;

.field protected final w:Lo/pS;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/pS;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lo/qf;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lo/qp;->z:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lo/qp;->w:Lo/pS;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "[\"%s\"]"

    .line 36
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/qp;->C:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/volley/Request$Priority;->c:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected U()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FetchUpSellData."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/qp;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lo/qp;->w:Lo/pS;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    invoke-interface {v0, v1, p1}, Lo/pS;->d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    const-string p1, "nq_upsell_data"

    const-string v0, "no callback for upSell"

    .line 77
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected c(Lorg/json/JSONObject;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lo/qp;->w:Lo/pS;

    const-string v1, "nq_upsell_data"

    if-eqz v0, :cond_1

    .line 53
    sget-boolean v0, Lo/qp;->e:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "jsonGraph"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lo/qp;->z:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "value"

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lo/qp;->z:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lo/qd;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 66
    :goto_0
    iget-object v0, p0, Lo/qp;->w:Lo/pS;

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/pS;->d(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    :cond_1
    const-string p1, "no callback for upSell"

    .line 68
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/qp;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected u_()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lo/qp;->C:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
