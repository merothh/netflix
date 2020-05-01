.class Lcom/netflix/mediaclient/NetflixApplication$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/NetflixApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/NetflixApplication;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$3;->b:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "NetflixApplication"

    if-eqz p2, :cond_1

    .line 1007
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.service.ACTION_SHOW_CAST_PLAYER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Sending show app intent"

    .line 1013
    invoke-static {p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$3;->b:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/netflix/mediaclient/NetflixApplication;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/NetflixApplication;->startActivity(Landroid/content/Intent;)V

    .line 1016
    new-instance p1, Lcom/netflix/mediaclient/NetflixApplication$3$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/NetflixApplication$3$1;-><init>(Lcom/netflix/mediaclient/NetflixApplication$3;)V

    const-wide/16 v0, 0x190

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const-string v0, "Invalid intent: "

    .line 1008
    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
