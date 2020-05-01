.class Lcom/netflix/mediaclient/service/pservice/PService$1$1;
.super Ljava/util/ArrayList;
.source "PService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/netflix/mediaclient/service/pservice/PServiceAgent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/pservice/PService$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PService$1;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PService$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PService$1;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PService$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$000(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PService$1$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
