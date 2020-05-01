.class public Lo/GB;
.super Lo/Gf;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/Gf;-><init>()V

    return-void
.end method

.method static d(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cG:Lcom/netflix/mediaclient/StatusCode;

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
    .locals 1

    .line 25
    sget-object p2, Lo/GB;->c:Ljava/lang/String;

    const-string v0, "Device is unable to used Widevine L1 after OS upgrade, fail to Widevine L3."

    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "WIDEVINE_FORCED_FALLBACK_TO_L3_AFTER_OS_UPGRADE"

    .line 26
    invoke-virtual {p0, p2}, Lo/GB;->a(Ljava/lang/String;)V

    .line 27
    sget-object p2, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;->b:Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;

    invoke-static {p2}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;)V

    .line 29
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p2

    invoke-interface {p2}, Lo/bO;->e()Lo/hT;

    move-result-object p2

    invoke-virtual {p0}, Lo/GB;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lo/hT;->e(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lo/hR;

    move-result-object p1

    return-object p1
.end method

.method e()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 19
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cG:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
