.class public Lo/di;
.super Lo/df;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/cz;Lo/dc$StateListAnimator;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V
    .locals 6

    .line 16
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/df;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;Lo/cz;Lo/dc$StateListAnimator;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 21
    sget-object v0, Lo/di;->n:Ljava/lang/String;

    const-string v1, "No need to set security level L1..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method