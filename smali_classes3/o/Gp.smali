.class Lo/Gp;
.super Lo/Gf;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/Gf;-><init>()V

    return-void
.end method

.method static b(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 29
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aB:Lcom/netflix/mediaclient/StatusCode;

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

    .line 23
    sget-object v0, Lo/Gp;->c:Ljava/lang/String;

    const-string v1, "MSL get key request failed. Device may recover on its own"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/Gp;->c(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;

    move-result-object p1

    return-object p1
.end method

.method e()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 17
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aB:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method