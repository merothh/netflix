.class Lo/Gi;
.super Lo/Gf;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/Gf;-><init>()V

    return-void
.end method

.method static c(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 33
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cx:Lcom/netflix/mediaclient/StatusCode;

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

    .line 26
    sget-object v0, Lo/Gi;->c:Ljava/lang/String;

    const-string v1, "Device is unable to used Widevine, but we detected that Widevine was used in past."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lo/Gi;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Gi;->a(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Lo/Gi;->c(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;

    move-result-object p1

    return-object p1
.end method

.method e()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 20
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cx:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
