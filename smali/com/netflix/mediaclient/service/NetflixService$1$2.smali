.class Lcom/netflix/mediaclient/service/NetflixService$1$2;
.super Ljava/util/ArrayList;
.source "NetflixService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/netflix/mediaclient/service/ServiceAgent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/NetflixService$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService$1;)V
    .locals 1

    .prologue
    .line 401
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$700(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/player/PlayerAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$2;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method
