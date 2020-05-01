.class Lo/Gt;
.super Lo/Gf;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/Gf;-><init>()V

    return-void
.end method

.method static c(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 37
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->au:Lcom/netflix/mediaclient/StatusCode;

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
    .locals 3

    .line 28
    sget-object v0, Lo/Gt;->c:Ljava/lang/String;

    const-string v1, "MediaDrm Widevine plugin changed, unregister device and logout user"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lo/Gt;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/Gt;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p2

    invoke-interface {p2}, Lo/bO;->e()Lo/hT;

    move-result-object p2

    .line 32
    invoke-virtual {p0}, Lo/Gt;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {p0, p1}, Lo/Gt;->c(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gm:I

    .line 31
    invoke-interface {p2, p1, v0, v1, v2}, Lo/hT;->c(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)Lo/hR;

    move-result-object p1

    return-object p1
.end method

.method e()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 22
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->au:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
