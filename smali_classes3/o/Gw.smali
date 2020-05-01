.class public Lo/Gw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hR;


# instance fields
.field private d:Lo/hK;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ErrorManager"

    const-string v1, "::WidevineFailsAfterOsUpgradeErrorDescriptor"

    .line 29
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cG:Lcom/netflix/mediaclient/StatusCode;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    .line 33
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v3, "WIDEVINE_FORCED_FALLBACK_TO_L3_AFTER_OS_UPGRADE"

    invoke-interface {v1, v3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;->b:Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;

    invoke-static {v1}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;)V

    goto :goto_0

    .line 36
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cI:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, p1, :cond_1

    const-string v1, "nf_disable_widevine_l3_v3"

    .line 37
    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 40
    :cond_1
    :goto_0
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kG:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v1, Lo/Gx;

    invoke-direct {v1, v0}, Lo/Gx;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v2, Lo/hK;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-direct {v2, v3, p1, v0, v1}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lo/Gw;->d:Lo/hK;

    return-void
.end method

.method private static synthetic d(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-static {p0}, Lo/adk;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lo/Gw;->d(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lo/hK;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/Gw;->d:Lo/hK;

    return-object v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
