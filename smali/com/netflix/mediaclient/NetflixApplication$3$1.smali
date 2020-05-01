.class Lcom/netflix/mediaclient/NetflixApplication$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/NetflixApplication$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/NetflixApplication$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/NetflixApplication$3;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$3$1;->b:Lcom/netflix/mediaclient/NetflixApplication$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "NetflixApplication"

    const-string v1, "Sending show mini player intent"

    .line 1019
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication$3$1;->b:Lcom/netflix/mediaclient/NetflixApplication$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/NetflixApplication$3;->b:Lcom/netflix/mediaclient/NetflixApplication;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.service.ACTION_EXPAND_CAST_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
