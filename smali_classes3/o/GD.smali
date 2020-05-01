.class public Lo/GD;
.super Lo/Gf;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/Gf;-><init>()V

    return-void
.end method

.method static d(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cK:Lcom/netflix/mediaclient/StatusCode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;
    .locals 2

    .line 19
    sget-object v0, Lo/GD;->c:Ljava/lang/String;

    const-string v1, "MediaDrm Widevine Plugin is in bad stateKill app..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/GD;->c(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;

    move-result-object p1

    return-object p1
.end method

.method e()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 13
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cK:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
