.class Lcom/netflix/mediaclient/partner/reference/NetflixSSO$1;
.super Ljava/lang/Object;
.source "NetflixSSO.java"

# interfaces
.implements Lcom/netflix/mediaclient/partner/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/partner/reference/NetflixSSO;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/partner/reference/NetflixSSO;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSSO$1;->this$0:Lcom/netflix/mediaclient/partner/reference/NetflixSSO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseReceived(Lcom/netflix/mediaclient/partner/Response;)V
    .locals 4

    invoke-interface {p1}, Lcom/netflix/mediaclient/partner/Response;->getResponder()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "getExternalSsoService did not set component name!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_partner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getExternalSsoService sets component name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSSO$1;->this$0:Lcom/netflix/mediaclient/partner/reference/NetflixSSO;

    invoke-static {v1}, Lcom/netflix/mediaclient/partner/reference/NetflixSSO;->access$000(Lcom/netflix/mediaclient/partner/reference/NetflixSSO;)Lcom/netflix/mediaclient/partner/Partner;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/partner/Partner;->setComponentName(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
