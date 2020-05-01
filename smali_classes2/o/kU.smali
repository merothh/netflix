.class public abstract Lo/kU;
.super Lo/kS;
.source ""


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lo/kU;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/kU;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lo/kS;-><init>(Ljava/lang/String;)V

    .line 40
    :try_start_0
    iget-object p1, p0, Lo/kU;->j:Lorg/json/JSONObject;

    const-string v0, "delay"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    .line 43
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p2

    .line 44
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p3

    .line 45
    invoke-virtual {p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-static {p1}, Lo/adq;->p(Landroid/content/Context;)I

    move-result p3

    .line 48
    invoke-static {p1}, Lo/adq;->r(Landroid/content/Context;)I

    move-result p1

    .line 50
    iget-object v0, p0, Lo/kU;->j:Lorg/json/JSONObject;

    const-string v1, "gpsavail"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object p2, p0, Lo/kU;->j:Lorg/json/JSONObject;

    const-string v0, "playsdkver"

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    iget-object p2, p0, Lo/kU;->j:Lorg/json/JSONObject;

    const-string p3, "gmsver"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lo/kU;-><init>(Ljava/lang/String;J)V

    .line 62
    :try_start_0
    iget-object p1, p0, Lo/kU;->j:Lorg/json/JSONObject;

    const-string p2, "manufacturer"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, ""

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p3

    :goto_0
    :try_start_1
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object p1, p0, Lo/kU;->j:Lorg/json/JSONObject;

    const-string p2, "modname"

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move-object p5, p3

    :goto_1
    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object p1, p0, Lo/kU;->j:Lorg/json/JSONObject;

    const-string p2, "modnumber"

    if-eqz p6, :cond_2

    move-object p3, p6

    :cond_2
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method
