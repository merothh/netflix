.class Lcom/netflix/mediaclient/service/NetflixService$7$1;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/NetflixService$7;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService$7;)V
    .locals 0

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$7$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1673
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Sending show mini player intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$7$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$7;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_EXPAND_MDX_MINI_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1675
    return-void
.end method
