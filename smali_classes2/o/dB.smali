.class public Lo/dB;
.super Lo/do;
.source ""


# direct methods
.method constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lo/do;-><init>()V

    const-string v0, "ESN"

    const-string v1, "Widevine L3 SetupBox ESN Provider created..."

    .line 17
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected g()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .line 22
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method

.method public i()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .line 27
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method
