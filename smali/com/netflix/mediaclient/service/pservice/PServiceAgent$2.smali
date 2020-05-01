.class Lcom/netflix/mediaclient/service/pservice/PServiceAgent$2;
.super Ljava/lang/Object;
.source "PServiceAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pservice/PServiceAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->access$100(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;)Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->access$000(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;->onInitComplete(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
