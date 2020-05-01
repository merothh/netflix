.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

.field final synthetic val$license:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->this$2:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->val$license:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->this$2:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->this$1:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->this$2:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->val$sessionId:Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->getDrmSession(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getLicenseContext()Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->val$license:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->addLicenseReponse(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getLicenseData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->provideKeyResponse([B)V

    :cond_0
    return-void
.end method
