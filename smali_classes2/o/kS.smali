.class public abstract Lo/kS;
.super Lo/jC;
.source ""


# static fields
.field private static final a:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lo/kS;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/kS;->a:Ljava/lang/String;

    const-string v0, "MdxStackDial"

    .line 26
    sput-object v0, Lo/kS;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 36
    :try_start_0
    iget-object v0, p0, Lo/kS;->j:Lorg/json/JSONObject;

    const-string v1, "ctrlcat"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v0, p0, Lo/kS;->j:Lorg/json/JSONObject;

    const-string v1, "groupname"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object p1, p0, Lo/kS;->j:Lorg/json/JSONObject;

    const-string v0, "dialstack"

    sget-object v1, Lo/kS;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {p0}, Lo/kS;->H_()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lo/kS;->j:Lorg/json/JSONObject;

    const-string v1, "xid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public H_()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iget-object v1, p0, Lo/kS;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Lo/kQ;)V
    .locals 1

    .line 51
    :try_start_0
    iget-object v0, p0, Lo/kS;->j:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lo/kQ;->d(Lorg/json/JSONObject;)V

    .line 52
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iput-object p1, p0, Lo/kS;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
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
