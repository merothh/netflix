.class Lcom/netflix/mediaclient/service/NetflixService$1$1;
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
    .line 391
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$1$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/error/ErrorAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$1;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$1;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$1;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$1$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$1;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$1$1;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method
