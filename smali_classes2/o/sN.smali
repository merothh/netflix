.class public final Lo/sN;
.super Lo/sZ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sN$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/sN$TaskDescription;

# The value of this static final field might be set in the static constructor
.field private static final c:Ljava/lang/String; = "AccountOnHoldPlaybackError"


# instance fields
.field private e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/sN$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/sN$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/sN;->a:Lo/sN$TaskDescription;

    const-string v0, "AccountOnHoldPlaybackError"

    .line 17
    sput-object v0, Lo/sN;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "userDisplayErrMsg"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayErrorCode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraInfo"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lo/sZ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_0
    const-string p1, "uma"

    .line 24
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    sget-object p2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 34
    const-class p2, Lcom/google/gson/Gson;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/Gson;

    .line 26
    const-class p3, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p2, p1, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    iput-object p1, p0, Lo/sN;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error parsing umaAlert = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/sN;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - exception = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final b()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/sN;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    return-object v0
.end method
